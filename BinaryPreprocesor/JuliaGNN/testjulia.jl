using Flux
using Flux: onehotbatch, onecold
using Flux.Losses: logitcrossentropy
using Flux.Data: DataLoader
using GeometricFlux
using GeometricFlux.Datasets
using Graphs
using GraphSignals
using Statistics
using Random
using GraphNeuralNetworks
using DelimitedFiles
using CSV
using DataFrames

#=
    This is just an attempt to try a ready-to-use GNN model written in Julia
        it is said that Julia is far better and faster for ML models than python, as it uses JIT for any function without explicitly specifying, so it is faster for training.
            I found 2 ready-to-use models, the first: GeometricFlux, but it is limited to node-level classification only, the second: GraphNeuralNetworks, having positive thoughts
            I also made it easy to just pass an array of csv names to the model as our adjacency list. it will just extract the graph from each file and append them to X_train and Y_train
            then train the model


            NOW, I wanna have some csv files to test this script, preferrably more than 1000 files. I can't write a lot of csv files myself

            THANK YOU :)
=#


function slicematrix(A::AbstractMatrix{T}) where T
    m, n = size(A)
    B = Vector{T}[Vector{T}(undef, n) for _ in 1:m]
    for i in 1:m
        B[i] .= A[i, :]
    end
    return B
end


function read_csvs_and_extract_structural_graphs(csv_list)
    graph_list = Vector{GNNGraph}()
    label_list = Vector{Int64}()
    for cv in csv_list
        df = DataFrame(CSV.File(cv))
        m = Matrix(df)
        arr = slicematrix(m)
        arr_str = Vector{Vector{String}}()
        arr_casted_back_to_int = Vector{Vector{BigInt}}()
        for i in arr
            #println(string.(i))
            push!(arr_str , string.(i))
            temp_arr = Vector{Int64}()
            for inner in string.(i)
                unicode_vector_for_each_char = ""
                for eachchar in inner
                    unicode_vector_for_each_char = unicode_vector_for_each_char * string(Int(eachchar), base=10, pad = 0)
                end
                push!(temp_arr, parse(Int64,unicode_vector_for_each_char))
            end
            push!(arr_casted_back_to_int, temp_arr)
        end
        #println(arr_str)
        #arr = convert(Vector{Vector{String}},arr)
        #println(m)
        #println(arr_str)
        #println(typeof(arr_str))


            
        #g = Graphs.Graph()
        #for (i, j) in zip(s, t)
        #    Graphs.add_edge!(g, i, j)
        #end

        #fg = FeaturedGraph(g)
        println(arr_casted_back_to_int)
        gr = GNNGraph(arr_casted_back_to_int)
        rand_label = rand((1,4))
        gr.gdata.z = rand_label
        println(gr.num_nodes)
        println(gr.num_edges)
        println(gr.num_graphs)
        #println(rand_label)
        #println(typeof(rand_label))
        push!(graph_list, gr)
        push!(label_list, rand_label)
    end
    return graph_list, label_list
end












#=

function eval_loss_accuracy(model, data_loader, device)
    loss = 0.0
    acc = 0.0
    ntot = 0
    for (g, y) in data_loader
        g, y = (g, y) |> device
        n = length(y)
        ŷ = model(g, g.ndata.x) |> vec
        loss += logitbinarycrossentropy(ŷ, y) * n
        acc += mean((ŷ .> 0) .== y) * n
        ntot += n
    end
    return (loss = round(loss / ntot, digits = 4),
            acc = round(acc * 100 / ntot, digits = 2))
end




# arguments for the `train` function 
Base.@kwdef mutable struct Args
    η = 1.0f-3             # learning rate
    batchsize = 32      # batch size (number of graphs in each batch)
    epochs = 200         # number of epochs
    seed = 17             # set seed > 0 for reproducibility
    usecuda = true      # if true use cuda (if available)
    nhidden = 128        # dimension of hidden features
    infotime = 10      # report every `infotime` epochs
    
    csv_list = ["edges1.csv", "edges2.csv", "edges3.csv"]

end

function train(; kws...)
    args = Args(; kws...)
    args.seed > 0 && Random.seed!(args.seed)

    if args.usecuda && CUDA.functional()
        device = gpu
        args.seed > 0 && CUDA.seed!(args.seed)
        @info "Training on GPU"
    else
        device = cpu
        @info "Training on CPU"
    end

    # LOAD DATA
    NUM_TRAIN = 150

    dataset = read_csvs_and_extract_structural_graphs(args.csv_list)
    train_data, test_data = splitobs(dataset, at = NUM_TRAIN, shuffle = true)

    train_loader = DataLoader(train_data; args.batchsize, shuffle = true, collate = true)
    test_loader = DataLoader(test_data; args.batchsize, shuffle = false, collate = true)

    # DEFINE MODEL

    nin = size(dataset[1][1].ndata.x, 1)
    nhidden = args.nhidden

    model = GNNChain(GraphConv(nin => nhidden, relu),
                     GraphConv(nhidden => nhidden, relu),
                     GlobalPool(mean),
                     Dense(nhidden, 1)) |> device

    ps = Flux.params(model)
    opt = Adam(args.η)

    # LOGGING FUNCTION

    function report(epoch)
        train = eval_loss_accuracy(model, train_loader, device)
        test = eval_loss_accuracy(model, test_loader, device)
        println("Epoch: $epoch   Train: $(train)   Test: $(test)")
    end

    # TRAIN

    report(0)
    for epoch in 1:(args.epochs)
        for (g, y) in train_loader
            g, y = (g, y) |> device
            gs = Flux.gradient(ps) do
                ŷ = model(g, g.ndata.x) |> vec
                logitbinarycrossentropy(ŷ, y)
            end
            Flux.Optimise.update!(opt, ps, gs)
        end
        epoch % args.infotime == 0 && report(epoch)
    end
end


train()
=#

csv_list = ["edges1.csv", "edges2.csv", "edges3.csv"]

grap_list, labl_list = read_csvs_and_extract_structural_graphs(csv_list)

