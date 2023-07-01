from rest_framework import serializers

class MULFileSerializer(serializers.Serializer):
    files = serializers.ListField(child=serializers.FileField(allow_empty_file=False, use_url=False), allow_empty=False)


class FileSerializer(serializers.Serializer):
    file = serializers.FileField(allow_empty_file=False, use_url=False)

class stringSerializer(serializers.Serializer):
    num_case = serializers.CharField(max_length=None, min_length=None, allow_blank=False)