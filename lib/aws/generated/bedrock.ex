# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Bedrock do
  @moduledoc """
  Describes the API operations for creating, managing, fine-turning, and
  evaluating Amazon Bedrock models.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      model_customization_job_summary() :: %{
        "baseModelArn" => String.t(),
        "creationTime" => non_neg_integer(),
        "customModelArn" => String.t(),
        "customModelName" => String.t(),
        "customizationType" => list(any()),
        "endTime" => non_neg_integer(),
        "jobArn" => String.t(),
        "jobName" => String.t(),
        "lastModifiedTime" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type model_customization_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_custom_models_request() :: %{
        optional("baseModelArnEquals") => String.t(),
        optional("creationTimeAfter") => non_neg_integer(),
        optional("creationTimeBefore") => non_neg_integer(),
        optional("foundationModelArnEquals") => String.t(),
        optional("isOwned") => [boolean()],
        optional("maxResults") => integer(),
        optional("nameContains") => String.t(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }

  """
  @type list_custom_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_provisioned_model_throughput_response() :: %{}

  """
  @type delete_provisioned_model_throughput_response() :: %{}

  @typedoc """

  ## Example:

      create_model_import_job_response() :: %{
        "jobArn" => String.t()
      }

  """
  @type create_model_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_evaluation_job_response() :: %{
        "creationTime" => non_neg_integer(),
        "customerEncryptionKeyId" => String.t(),
        "evaluationConfig" => list(),
        "failureMessages" => list(String.t()()),
        "inferenceConfig" => list(),
        "jobArn" => String.t(),
        "jobDescription" => String.t(),
        "jobName" => String.t(),
        "jobType" => list(any()),
        "lastModifiedTime" => non_neg_integer(),
        "outputDataConfig" => evaluation_output_data_config(),
        "roleArn" => String.t(),
        "status" => list(any())
      }

  """
  @type get_evaluation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      foundation_model_summary() :: %{
        "customizationsSupported" => list(list(any())()),
        "inferenceTypesSupported" => list(list(any())()),
        "inputModalities" => list(list(any())()),
        "modelArn" => String.t(),
        "modelId" => String.t(),
        "modelLifecycle" => foundation_model_lifecycle(),
        "modelName" => String.t(),
        "outputModalities" => list(list(any())()),
        "providerName" => String.t(),
        "responseStreamingSupported" => [boolean()]
      }

  """
  @type foundation_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("resourceARN") => String.t(),
        required("tags") => list(tag()())
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_guardrail_request() :: %{
        optional("guardrailVersion") => String.t()
      }

  """
  @type delete_guardrail_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_model_invocation_job_request() :: %{}

  """
  @type stop_model_invocation_job_request() :: %{}

  @typedoc """

  ## Example:

      delete_custom_model_response() :: %{}

  """
  @type delete_custom_model_response() :: %{}

  @typedoc """

  ## Example:

      create_model_invocation_job_response() :: %{
        "jobArn" => String.t()
      }

  """
  @type create_model_invocation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_inference_profiles_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_inference_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_evaluation_job_error() :: %{
        "code" => [String.t()],
        "jobIdentifier" => String.t(),
        "message" => [String.t()]
      }

  """
  @type batch_delete_evaluation_job_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_evaluation_job_request() :: %{}

  """
  @type get_evaluation_job_request() :: %{}

  @typedoc """

  ## Example:

      stop_evaluation_job_response() :: %{}

  """
  @type stop_evaluation_job_response() :: %{}

  @typedoc """

  ## Example:

      get_provisioned_model_throughput_request() :: %{}

  """
  @type get_provisioned_model_throughput_request() :: %{}

  @typedoc """

  ## Example:

      create_model_customization_job_response() :: %{
        "jobArn" => String.t()
      }

  """
  @type create_model_customization_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_guardrail_response() :: %{
        "blockedInputMessaging" => String.t(),
        "blockedOutputsMessaging" => String.t(),
        "contentPolicy" => guardrail_content_policy(),
        "contextualGroundingPolicy" => guardrail_contextual_grounding_policy(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "failureRecommendations" => list(String.t()()),
        "guardrailArn" => String.t(),
        "guardrailId" => String.t(),
        "kmsKeyArn" => String.t(),
        "name" => String.t(),
        "sensitiveInformationPolicy" => guardrail_sensitive_information_policy(),
        "status" => list(any()),
        "statusReasons" => list(String.t()()),
        "topicPolicy" => guardrail_topic_policy(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t(),
        "wordPolicy" => guardrail_word_policy()
      }

  """
  @type get_guardrail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      foundation_model_details() :: %{
        "customizationsSupported" => list(list(any())()),
        "inferenceTypesSupported" => list(list(any())()),
        "inputModalities" => list(list(any())()),
        "modelArn" => String.t(),
        "modelId" => String.t(),
        "modelLifecycle" => foundation_model_lifecycle(),
        "modelName" => String.t(),
        "outputModalities" => list(list(any())()),
        "providerName" => String.t(),
        "responseStreamingSupported" => [boolean()]
      }

  """
  @type foundation_model_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_topic_policy_config() :: %{
        "topicsConfig" => list(guardrail_topic_config()())
      }

  """
  @type guardrail_topic_policy_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_model_invocation_jobs_request() :: %{
        optional("maxResults") => integer(),
        optional("nameContains") => String.t(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("statusEquals") => list(any()),
        optional("submitTimeAfter") => non_neg_integer(),
        optional("submitTimeBefore") => non_neg_integer()
      }

  """
  @type list_model_invocation_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_guardrail_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("contentPolicyConfig") => guardrail_content_policy_config(),
        optional("contextualGroundingPolicyConfig") => guardrail_contextual_grounding_policy_config(),
        optional("description") => String.t(),
        optional("kmsKeyId") => String.t(),
        optional("sensitiveInformationPolicyConfig") => guardrail_sensitive_information_policy_config(),
        optional("tags") => list(tag()()),
        optional("topicPolicyConfig") => guardrail_topic_policy_config(),
        optional("wordPolicyConfig") => guardrail_word_policy_config(),
        required("blockedInputMessaging") => String.t(),
        required("blockedOutputsMessaging") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_guardrail_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "version" => String.t()
      }

  """
  @type guardrail_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      guardrail_word_policy() :: %{
        "managedWordLists" => list(guardrail_managed_words()()),
        "words" => list(guardrail_word()())
      }

  """
  @type guardrail_word_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_evaluation_jobs_request() :: %{
        optional("creationTimeAfter") => non_neg_integer(),
        optional("creationTimeBefore") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("nameContains") => String.t(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("statusEquals") => list(any())
      }

  """
  @type list_evaluation_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      automated_evaluation_config() :: %{
        "datasetMetricConfigs" => list(evaluation_dataset_metric_config()())
      }

  """
  @type automated_evaluation_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_topic_config() :: %{
        "definition" => String.t(),
        "examples" => list(String.t()()),
        "name" => String.t(),
        "type" => list(any())
      }

  """
  @type guardrail_topic_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_inference_profile_response() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "inferenceProfileArn" => String.t(),
        "inferenceProfileId" => String.t(),
        "inferenceProfileName" => String.t(),
        "models" => list(inference_profile_model()()),
        "status" => list(any()),
        "type" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_inference_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      human_workflow_config() :: %{
        "flowDefinitionArn" => String.t(),
        "instructions" => String.t()
      }

  """
  @type human_workflow_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_content_policy() :: %{
        "filters" => list(guardrail_content_filter()())
      }

  """
  @type guardrail_content_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_model_import_jobs_request() :: %{
        optional("creationTimeAfter") => non_neg_integer(),
        optional("creationTimeBefore") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("nameContains") => String.t(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("statusEquals") => list(any())
      }

  """
  @type list_model_import_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_contextual_grounding_filter_config() :: %{
        "threshold" => [float()],
        "type" => list(any())
      }

  """
  @type guardrail_contextual_grounding_filter_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_model_customization_jobs_request() :: %{
        optional("creationTimeAfter") => non_neg_integer(),
        optional("creationTimeBefore") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("nameContains") => String.t(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("statusEquals") => list(any())
      }

  """
  @type list_model_customization_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_provisioned_model_throughputs_request() :: %{
        optional("creationTimeAfter") => non_neg_integer(),
        optional("creationTimeBefore") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("modelArnEquals") => String.t(),
        optional("nameContains") => String.t(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("statusEquals") => list(any())
      }

  """
  @type list_provisioned_model_throughputs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_guardrail_response() :: %{
        "createdAt" => non_neg_integer(),
        "guardrailArn" => String.t(),
        "guardrailId" => String.t(),
        "version" => String.t()
      }

  """
  @type create_guardrail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_evaluation_job_request() :: %{}

  """
  @type stop_evaluation_job_request() :: %{}

  @typedoc """

  ## Example:

      list_inference_profiles_response() :: %{
        "inferenceProfileSummaries" => list(inference_profile_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_inference_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_watch_config() :: %{
        "largeDataDeliveryS3Config" => s3_config(),
        "logGroupName" => String.t(),
        "roleArn" => String.t()
      }

  """
  @type cloud_watch_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logging_config() :: %{
        "cloudWatchConfig" => cloud_watch_config(),
        "embeddingDataDeliveryEnabled" => [boolean()],
        "imageDataDeliveryEnabled" => [boolean()],
        "s3Config" => s3_config(),
        "textDataDeliveryEnabled" => [boolean()]
      }

  """
  @type logging_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("resourceARN") => String.t(),
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_provisioned_model_throughputs_response() :: %{
        "nextToken" => String.t(),
        "provisionedModelSummaries" => list(provisioned_model_summary()())
      }

  """
  @type list_provisioned_model_throughputs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      provisioned_model_summary() :: %{
        "commitmentDuration" => list(any()),
        "commitmentExpirationTime" => non_neg_integer(),
        "creationTime" => non_neg_integer(),
        "desiredModelArn" => String.t(),
        "desiredModelUnits" => integer(),
        "foundationModelArn" => String.t(),
        "lastModifiedTime" => non_neg_integer(),
        "modelArn" => String.t(),
        "modelUnits" => integer(),
        "provisionedModelArn" => String.t(),
        "provisionedModelName" => String.t(),
        "status" => list(any())
      }

  """
  @type provisioned_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_model_copy_job_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("modelKmsKeyId") => String.t(),
        optional("targetModelTags") => list(tag()()),
        required("sourceModelArn") => String.t(),
        required("targetModelName") => String.t()
      }

  """
  @type create_model_copy_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      model_import_job_summary() :: %{
        "creationTime" => non_neg_integer(),
        "endTime" => non_neg_integer(),
        "importedModelArn" => String.t(),
        "importedModelName" => String.t(),
        "jobArn" => String.t(),
        "jobName" => String.t(),
        "lastModifiedTime" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type model_import_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_managed_words_config() :: %{
        "type" => list(any())
      }

  """
  @type guardrail_managed_words_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_word() :: %{
        "text" => [String.t()]
      }

  """
  @type guardrail_word() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inference_profile_model() :: %{
        "modelArn" => String.t()
      }

  """
  @type inference_profile_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inference_profile_summary() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "inferenceProfileArn" => String.t(),
        "inferenceProfileId" => String.t(),
        "inferenceProfileName" => String.t(),
        "models" => list(inference_profile_model()()),
        "status" => list(any()),
        "type" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type inference_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_model_invocation_job_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("tags") => list(tag()()),
        optional("timeoutDurationInHours") => integer(),
        optional("vpcConfig") => vpc_config(),
        required("inputDataConfig") => list(),
        required("jobName") => String.t(),
        required("modelId") => String.t(),
        required("outputDataConfig") => list(),
        required("roleArn") => String.t()
      }

  """
  @type create_model_invocation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_provisioned_model_throughput_response() :: %{
        "commitmentDuration" => list(any()),
        "commitmentExpirationTime" => non_neg_integer(),
        "creationTime" => non_neg_integer(),
        "desiredModelArn" => String.t(),
        "desiredModelUnits" => integer(),
        "failureMessage" => String.t(),
        "foundationModelArn" => String.t(),
        "lastModifiedTime" => non_neg_integer(),
        "modelArn" => String.t(),
        "modelUnits" => integer(),
        "provisionedModelArn" => String.t(),
        "provisionedModelName" => String.t(),
        "status" => list(any())
      }

  """
  @type get_provisioned_model_throughput_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      model_invocation_job_s3_output_data_config() :: %{
        "s3BucketOwner" => String.t(),
        "s3EncryptionKeyId" => String.t(),
        "s3Uri" => String.t()
      }

  """
  @type model_invocation_job_s3_output_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_foundation_model_request() :: %{}

  """
  @type get_foundation_model_request() :: %{}

  @typedoc """

  ## Example:

      imported_model_summary() :: %{
        "creationTime" => non_neg_integer(),
        "instructSupported" => boolean(),
        "modelArchitecture" => String.t(),
        "modelArn" => String.t(),
        "modelName" => String.t()
      }

  """
  @type imported_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_imported_model_request() :: %{}

  """
  @type get_imported_model_request() :: %{}

  @typedoc """

  ## Example:

      stop_model_customization_job_response() :: %{}

  """
  @type stop_model_customization_job_response() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_model_copy_job_request() :: %{}

  """
  @type get_model_copy_job_request() :: %{}

  @typedoc """

  ## Example:

      guardrail_content_filter_config() :: %{
        "inputStrength" => list(any()),
        "outputStrength" => list(any()),
        "type" => list(any())
      }

  """
  @type guardrail_content_filter_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_guardrails_response() :: %{
        "guardrails" => list(guardrail_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_guardrails_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }

  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_inference_profile_request() :: %{}

  """
  @type get_inference_profile_request() :: %{}

  @typedoc """

  ## Example:

      delete_provisioned_model_throughput_request() :: %{}

  """
  @type delete_provisioned_model_throughput_request() :: %{}

  @typedoc """

  ## Example:

      evaluation_dataset_metric_config() :: %{
        "dataset" => evaluation_dataset(),
        "metricNames" => list(String.t()()),
        "taskType" => list(any())
      }

  """
  @type evaluation_dataset_metric_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_content_filter() :: %{
        "inputStrength" => list(any()),
        "outputStrength" => list(any()),
        "type" => list(any())
      }

  """
  @type guardrail_content_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_provisioned_model_throughput_response() :: %{
        "provisionedModelArn" => String.t()
      }

  """
  @type create_provisioned_model_throughput_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_config() :: %{
        "bucketName" => String.t(),
        "keyPrefix" => String.t()
      }

  """
  @type s3_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_model_invocation_jobs_response() :: %{
        "invocationJobSummaries" => list(model_invocation_job_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_model_invocation_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_custom_model_response() :: %{
        "baseModelArn" => String.t(),
        "creationTime" => non_neg_integer(),
        "customizationType" => list(any()),
        "hyperParameters" => map(),
        "jobArn" => String.t(),
        "jobName" => String.t(),
        "modelArn" => String.t(),
        "modelKmsKeyArn" => String.t(),
        "modelName" => String.t(),
        "outputDataConfig" => output_data_config(),
        "trainingDataConfig" => training_data_config(),
        "trainingMetrics" => training_metrics(),
        "validationDataConfig" => validation_data_config(),
        "validationMetrics" => list(validator_metric()())
      }

  """
  @type get_custom_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      model_copy_job_summary() :: %{
        "creationTime" => non_neg_integer(),
        "failureMessage" => String.t(),
        "jobArn" => String.t(),
        "sourceAccountId" => String.t(),
        "sourceModelArn" => String.t(),
        "sourceModelName" => String.t(),
        "status" => list(any()),
        "targetModelArn" => String.t(),
        "targetModelKmsKeyArn" => String.t(),
        "targetModelName" => String.t(),
        "targetModelTags" => list(tag()())
      }

  """
  @type model_copy_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_contextual_grounding_filter() :: %{
        "threshold" => [float()],
        "type" => list(any())
      }

  """
  @type guardrail_contextual_grounding_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_provisioned_model_throughput_request() :: %{
        optional("desiredModelId") => String.t(),
        optional("desiredProvisionedModelName") => String.t()
      }

  """
  @type update_provisioned_model_throughput_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_managed_words() :: %{
        "type" => list(any())
      }

  """
  @type guardrail_managed_words() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_content_policy_config() :: %{
        "filtersConfig" => list(guardrail_content_filter_config()())
      }

  """
  @type guardrail_content_policy_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_output_data_config() :: %{
        "s3Uri" => String.t()
      }

  """
  @type evaluation_output_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_provisioned_model_throughput_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("commitmentDuration") => list(any()),
        optional("tags") => list(tag()()),
        required("modelId") => String.t(),
        required("modelUnits") => integer(),
        required("provisionedModelName") => String.t()
      }

  """
  @type create_provisioned_model_throughput_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_config() :: %{
        "securityGroupIds" => list(String.t()()),
        "subnetIds" => list(String.t()())
      }

  """
  @type vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_evaluation_job_response() :: %{
        "errors" => list(batch_delete_evaluation_job_error()()),
        "evaluationJobs" => list(batch_delete_evaluation_job_item()())
      }

  """
  @type batch_delete_evaluation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_pii_entity() :: %{
        "action" => list(any()),
        "type" => list(any())
      }

  """
  @type guardrail_pii_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_imported_models_request() :: %{
        optional("creationTimeAfter") => non_neg_integer(),
        optional("creationTimeBefore") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("nameContains") => String.t(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }

  """
  @type list_imported_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_model_invocation_logging_configuration_response() :: %{}

  """
  @type delete_model_invocation_logging_configuration_response() :: %{}

  @typedoc """

  ## Example:

      training_metrics() :: %{
        "trainingLoss" => float()
      }

  """
  @type training_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_guardrail_request() :: %{
        optional("contentPolicyConfig") => guardrail_content_policy_config(),
        optional("contextualGroundingPolicyConfig") => guardrail_contextual_grounding_policy_config(),
        optional("description") => String.t(),
        optional("kmsKeyId") => String.t(),
        optional("sensitiveInformationPolicyConfig") => guardrail_sensitive_information_policy_config(),
        optional("topicPolicyConfig") => guardrail_topic_policy_config(),
        optional("wordPolicyConfig") => guardrail_word_policy_config(),
        required("blockedInputMessaging") => String.t(),
        required("blockedOutputsMessaging") => String.t(),
        required("name") => String.t()
      }

  """
  @type update_guardrail_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_model_import_job_request() :: %{}

  """
  @type get_model_import_job_request() :: %{}

  @typedoc """

  ## Example:

      get_model_import_job_response() :: %{
        "creationTime" => non_neg_integer(),
        "endTime" => non_neg_integer(),
        "failureMessage" => String.t(),
        "importedModelArn" => String.t(),
        "importedModelKmsKeyArn" => String.t(),
        "importedModelName" => String.t(),
        "jobArn" => String.t(),
        "jobName" => String.t(),
        "lastModifiedTime" => non_neg_integer(),
        "modelDataSource" => list(),
        "roleArn" => String.t(),
        "status" => list(any()),
        "vpcConfig" => vpc_config()
      }

  """
  @type get_model_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      model_invocation_job_s3_input_data_config() :: %{
        "s3BucketOwner" => String.t(),
        "s3InputFormat" => list(any()),
        "s3Uri" => String.t()
      }

  """
  @type model_invocation_job_s3_input_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_custom_model_request() :: %{}

  """
  @type get_custom_model_request() :: %{}

  @typedoc """

  ## Example:

      list_imported_models_response() :: %{
        "modelSummaries" => list(imported_model_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_imported_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_model_customization_job_request() :: %{}

  """
  @type get_model_customization_job_request() :: %{}

  @typedoc """

  ## Example:

      human_evaluation_custom_metric() :: %{
        "description" => String.t(),
        "name" => String.t(),
        "ratingMethod" => String.t()
      }

  """
  @type human_evaluation_custom_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_model_invocation_logging_configuration_request() :: %{}

  """
  @type get_model_invocation_logging_configuration_request() :: %{}

  @typedoc """

  ## Example:

      delete_imported_model_response() :: %{}

  """
  @type delete_imported_model_response() :: %{}

  @typedoc """

  ## Example:

      list_foundation_models_request() :: %{
        optional("byCustomizationType") => list(any()),
        optional("byInferenceType") => list(any()),
        optional("byOutputModality") => list(any()),
        optional("byProvider") => String.t()
      }

  """
  @type list_foundation_models_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_word_config() :: %{
        "text" => [String.t()]
      }

  """
  @type guardrail_word_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_sensitive_information_policy() :: %{
        "piiEntities" => list(guardrail_pii_entity()()),
        "regexes" => list(guardrail_regex()())
      }

  """
  @type guardrail_sensitive_information_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      foundation_model_lifecycle() :: %{
        "status" => list(any())
      }

  """
  @type foundation_model_lifecycle() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_contextual_grounding_policy_config() :: %{
        "filtersConfig" => list(guardrail_contextual_grounding_filter_config()())
      }

  """
  @type guardrail_contextual_grounding_policy_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_imported_model_request() :: %{}

  """
  @type delete_imported_model_request() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_model_copy_jobs_response() :: %{
        "modelCopyJobSummaries" => list(model_copy_job_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_model_copy_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_guardrail_response() :: %{}

  """
  @type delete_guardrail_response() :: %{}

  @typedoc """

  ## Example:

      validation_data_config() :: %{
        "validators" => list(validator()())
      }

  """
  @type validation_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_evaluation_job_item() :: %{
        "jobIdentifier" => String.t(),
        "jobStatus" => list(any())
      }

  """
  @type batch_delete_evaluation_job_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_model_invocation_job_response() :: %{}

  """
  @type stop_model_invocation_job_response() :: %{}

  @typedoc """

  ## Example:

      update_provisioned_model_throughput_response() :: %{}

  """
  @type update_provisioned_model_throughput_response() :: %{}

  @typedoc """

  ## Example:

      guardrail_regex_config() :: %{
        "action" => list(any()),
        "description" => [String.t()],
        "name" => [String.t()],
        "pattern" => [String.t()]
      }

  """
  @type guardrail_regex_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_model_invocation_logging_configuration_request() :: %{
        required("loggingConfig") => logging_config()
      }

  """
  @type put_model_invocation_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_model_customization_jobs_response() :: %{
        "modelCustomizationJobSummaries" => list(model_customization_job_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_model_customization_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_foundation_models_response() :: %{
        "modelSummaries" => list(foundation_model_summary()())
      }

  """
  @type list_foundation_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_imported_model_response() :: %{
        "creationTime" => non_neg_integer(),
        "instructSupported" => boolean(),
        "jobArn" => String.t(),
        "jobName" => String.t(),
        "modelArchitecture" => [String.t()],
        "modelArn" => String.t(),
        "modelDataSource" => list(),
        "modelKmsKeyArn" => String.t(),
        "modelName" => String.t()
      }

  """
  @type get_imported_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_model_invocation_job_request() :: %{}

  """
  @type get_model_invocation_job_request() :: %{}

  @typedoc """

  ## Example:

      create_model_customization_job_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("customModelKmsKeyId") => String.t(),
        optional("customModelTags") => list(tag()()),
        optional("customizationType") => list(any()),
        optional("jobTags") => list(tag()()),
        optional("validationDataConfig") => validation_data_config(),
        optional("vpcConfig") => vpc_config(),
        required("baseModelIdentifier") => String.t(),
        required("customModelName") => String.t(),
        required("hyperParameters") => map(),
        required("jobName") => String.t(),
        required("outputDataConfig") => output_data_config(),
        required("roleArn") => String.t(),
        required("trainingDataConfig") => training_data_config()
      }

  """
  @type create_model_customization_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_evaluation_job_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("customerEncryptionKeyId") => String.t(),
        optional("jobDescription") => String.t(),
        optional("jobTags") => list(tag()()),
        required("evaluationConfig") => list(),
        required("inferenceConfig") => list(),
        required("jobName") => String.t(),
        required("outputDataConfig") => evaluation_output_data_config(),
        required("roleArn") => String.t()
      }

  """
  @type create_evaluation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_word_policy_config() :: %{
        "managedWordListsConfig" => list(guardrail_managed_words_config()()),
        "wordsConfig" => list(guardrail_word_config()())
      }

  """
  @type guardrail_word_policy_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validator_metric() :: %{
        "validationLoss" => float()
      }

  """
  @type validator_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_evaluation_jobs_response() :: %{
        "jobSummaries" => list(evaluation_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_evaluation_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_sensitive_information_policy_config() :: %{
        "piiEntitiesConfig" => list(guardrail_pii_entity_config()()),
        "regexesConfig" => list(guardrail_regex_config()())
      }

  """
  @type guardrail_sensitive_information_policy_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_model_customization_job_request() :: %{}

  """
  @type stop_model_customization_job_request() :: %{}

  @typedoc """

  ## Example:

      create_guardrail_version_response() :: %{
        "guardrailId" => String.t(),
        "version" => String.t()
      }

  """
  @type create_guardrail_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_custom_model_request() :: %{}

  """
  @type delete_custom_model_request() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("resourceARN") => String.t()
      }

  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_model_copy_job_response() :: %{
        "jobArn" => String.t()
      }

  """
  @type create_model_copy_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_pii_entity_config() :: %{
        "action" => list(any()),
        "type" => list(any())
      }

  """
  @type guardrail_pii_entity_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_dataset() :: %{
        "datasetLocation" => list(),
        "name" => String.t()
      }

  """
  @type evaluation_dataset() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_model_customization_job_response() :: %{
        "baseModelArn" => String.t(),
        "clientRequestToken" => String.t(),
        "creationTime" => non_neg_integer(),
        "customizationType" => list(any()),
        "endTime" => non_neg_integer(),
        "failureMessage" => String.t(),
        "hyperParameters" => map(),
        "jobArn" => String.t(),
        "jobName" => String.t(),
        "lastModifiedTime" => non_neg_integer(),
        "outputDataConfig" => output_data_config(),
        "outputModelArn" => String.t(),
        "outputModelKmsKeyArn" => String.t(),
        "outputModelName" => String.t(),
        "roleArn" => String.t(),
        "status" => list(any()),
        "trainingDataConfig" => training_data_config(),
        "trainingMetrics" => training_metrics(),
        "validationDataConfig" => validation_data_config(),
        "validationMetrics" => list(validator_metric()()),
        "vpcConfig" => vpc_config()
      }

  """
  @type get_model_customization_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_model_copy_job_response() :: %{
        "creationTime" => non_neg_integer(),
        "failureMessage" => String.t(),
        "jobArn" => String.t(),
        "sourceAccountId" => String.t(),
        "sourceModelArn" => String.t(),
        "sourceModelName" => String.t(),
        "status" => list(any()),
        "targetModelArn" => String.t(),
        "targetModelKmsKeyArn" => String.t(),
        "targetModelName" => String.t(),
        "targetModelTags" => list(tag()())
      }

  """
  @type get_model_copy_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_custom_models_response() :: %{
        "modelSummaries" => list(custom_model_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_custom_models_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_topic_policy() :: %{
        "topics" => list(guardrail_topic()())
      }

  """
  @type guardrail_topic_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_data_config() :: %{
        "s3Uri" => String.t()
      }

  """
  @type output_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_model_invocation_logging_configuration_response() :: %{
        "loggingConfig" => logging_config()
      }

  """
  @type get_model_invocation_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_model_import_job_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("importedModelKmsKeyId") => String.t(),
        optional("importedModelTags") => list(tag()()),
        optional("jobTags") => list(tag()()),
        optional("vpcConfig") => vpc_config(),
        required("importedModelName") => String.t(),
        required("jobName") => String.t(),
        required("modelDataSource") => list(),
        required("roleArn") => String.t()
      }

  """
  @type create_model_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_guardrail_version_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("description") => String.t()
      }

  """
  @type create_guardrail_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_model_copy_jobs_request() :: %{
        optional("creationTimeAfter") => non_neg_integer(),
        optional("creationTimeBefore") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        optional("sourceAccountEquals") => String.t(),
        optional("sourceModelArnEquals") => String.t(),
        optional("statusEquals") => list(any()),
        optional("targetModelNameContains") => String.t()
      }

  """
  @type list_model_copy_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_guardrails_request() :: %{
        optional("guardrailIdentifier") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_guardrails_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_model_invocation_logging_configuration_response() :: %{}

  """
  @type put_model_invocation_logging_configuration_response() :: %{}

  @typedoc """

  ## Example:

      validator() :: %{
        "s3Uri" => String.t()
      }

  """
  @type validator() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_regex() :: %{
        "action" => list(any()),
        "description" => [String.t()],
        "name" => [String.t()],
        "pattern" => [String.t()]
      }

  """
  @type guardrail_regex() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_evaluation_job_request() :: %{
        required("jobIdentifiers") => list(String.t()())
      }

  """
  @type batch_delete_evaluation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_evaluation_job_response() :: %{
        "jobArn" => String.t()
      }

  """
  @type create_evaluation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_guardrail_response() :: %{
        "guardrailArn" => String.t(),
        "guardrailId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t()
      }

  """
  @type update_guardrail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      model_invocation_job_summary() :: %{
        "clientRequestToken" => String.t(),
        "endTime" => non_neg_integer(),
        "inputDataConfig" => list(),
        "jobArn" => String.t(),
        "jobExpirationTime" => non_neg_integer(),
        "jobName" => String.t(),
        "lastModifiedTime" => non_neg_integer(),
        "message" => String.t(),
        "modelId" => String.t(),
        "outputDataConfig" => list(),
        "roleArn" => String.t(),
        "status" => list(any()),
        "submitTime" => non_neg_integer(),
        "timeoutDurationInHours" => integer(),
        "vpcConfig" => vpc_config()
      }

  """
  @type model_invocation_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_summary() :: %{
        "creationTime" => non_neg_integer(),
        "evaluationTaskTypes" => list(list(any())()),
        "jobArn" => String.t(),
        "jobName" => String.t(),
        "jobType" => list(any()),
        "modelIdentifiers" => list(String.t()()),
        "status" => list(any())
      }

  """
  @type evaluation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      training_data_config() :: %{
        "s3Uri" => String.t()
      }

  """
  @type training_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_bedrock_model() :: %{
        "inferenceParams" => String.t(),
        "modelIdentifier" => String.t()
      }

  """
  @type evaluation_bedrock_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_model_invocation_logging_configuration_request() :: %{}

  """
  @type delete_model_invocation_logging_configuration_request() :: %{}

  @typedoc """

  ## Example:

      custom_model_summary() :: %{
        "baseModelArn" => String.t(),
        "baseModelName" => String.t(),
        "creationTime" => non_neg_integer(),
        "customizationType" => list(any()),
        "modelArn" => String.t(),
        "modelName" => String.t(),
        "ownerAccountId" => String.t()
      }

  """
  @type custom_model_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_guardrail_request() :: %{
        optional("guardrailVersion") => String.t()
      }

  """
  @type get_guardrail_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_foundation_model_response() :: %{
        "modelDetails" => foundation_model_details()
      }

  """
  @type get_foundation_model_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_tags_exception() :: %{
        "message" => String.t(),
        "resourceName" => String.t()
      }

  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_topic() :: %{
        "definition" => String.t(),
        "examples" => list(String.t()()),
        "name" => String.t(),
        "type" => list(any())
      }

  """
  @type guardrail_topic() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      guardrail_contextual_grounding_policy() :: %{
        "filters" => list(guardrail_contextual_grounding_filter()())
      }

  """
  @type guardrail_contextual_grounding_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      human_evaluation_config() :: %{
        "customMetrics" => list(human_evaluation_custom_metric()()),
        "datasetMetricConfigs" => list(evaluation_dataset_metric_config()()),
        "humanWorkflowConfig" => human_workflow_config()
      }

  """
  @type human_evaluation_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_model_invocation_job_response() :: %{
        "clientRequestToken" => String.t(),
        "endTime" => non_neg_integer(),
        "inputDataConfig" => list(),
        "jobArn" => String.t(),
        "jobExpirationTime" => non_neg_integer(),
        "jobName" => String.t(),
        "lastModifiedTime" => non_neg_integer(),
        "message" => String.t(),
        "modelId" => String.t(),
        "outputDataConfig" => list(),
        "roleArn" => String.t(),
        "status" => list(any()),
        "submitTime" => non_neg_integer(),
        "timeoutDurationInHours" => integer(),
        "vpcConfig" => vpc_config()
      }

  """
  @type get_model_invocation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_model_import_jobs_response() :: %{
        "modelImportJobSummaries" => list(model_import_job_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_model_import_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_data_source() :: %{
        "s3Uri" => String.t()
      }

  """
  @type s3_data_source() :: %{String.t() => any()}

  @type batch_delete_evaluation_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_evaluation_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_guardrail_errors() ::
          too_many_tags_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_guardrail_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_model_copy_job_errors() ::
          too_many_tags_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_model_customization_job_errors() ::
          too_many_tags_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_model_import_job_errors() ::
          too_many_tags_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_model_invocation_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_provisioned_model_throughput_errors() ::
          too_many_tags_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type delete_custom_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_guardrail_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_imported_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_model_invocation_logging_configuration_errors() ::
          throttling_exception() | access_denied_exception() | internal_server_exception()

  @type delete_provisioned_model_throughput_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_custom_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_evaluation_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_foundation_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_guardrail_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_imported_model_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_inference_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_model_copy_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_model_customization_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_model_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_model_invocation_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_model_invocation_logging_configuration_errors() ::
          throttling_exception() | access_denied_exception() | internal_server_exception()

  @type get_provisioned_model_throughput_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_custom_models_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_evaluation_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_foundation_models_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_guardrails_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_imported_models_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_inference_profiles_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_model_copy_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_model_customization_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_model_import_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_model_invocation_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_provisioned_model_throughputs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_model_invocation_logging_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type stop_evaluation_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_model_customization_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_model_invocation_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_guardrail_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_provisioned_model_throughput_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2023-04-20",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "bedrock",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Bedrock",
      signature_version: "v4",
      signing_name: "bedrock",
      target_prefix: nil
    }
  end

  @doc """
  Creates a batch deletion job.

  A model evaluation job can only be deleted if it has following status `FAILED`,
  `COMPLETED`, and `STOPPED`. You can request up to 25 model evaluation jobs be
  deleted in a single request.
  """
  @spec batch_delete_evaluation_job(map(), batch_delete_evaluation_job_request(), list()) ::
          {:ok, batch_delete_evaluation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_evaluation_job_errors()}
  def batch_delete_evaluation_job(%Client{} = client, input, options \\ []) do
    url_path = "/evaluation-jobs/batch-delete"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  API operation for creating and managing Amazon Bedrock automatic model
  evaluation jobs and model evaluation jobs that use human workers.

  To learn more about the requirements for creating a model evaluation job see,
  [Model evaluation](https://docs.aws.amazon.com/bedrock/latest/userguide/model-evaluation.html).
  """
  @spec create_evaluation_job(map(), create_evaluation_job_request(), list()) ::
          {:ok, create_evaluation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_evaluation_job_errors()}
  def create_evaluation_job(%Client{} = client, input, options \\ []) do
    url_path = "/evaluation-jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Creates a guardrail to block topics and to implement safeguards for your
  generative AI applications.

  You can configure the following policies in a guardrail to avoid undesirable and
  harmful content, filter
  out denied topics and words, and remove sensitive information for privacy
  protection.

    *

  **Content filters** - Adjust filter strengths
  to block input prompts or model responses containing harmful content.

    *

  **Denied topics** - Define a set of topics that
  are undesirable in the context of your application. These topics will be blocked
  if
  detected in user queries or model responses.

    *

  **Word filters** - Configure filters to block
  undesirable words, phrases, and profanity. Such words can include offensive
  terms,
  competitor names etc.

    *

  **Sensitive information filters** - Block or
  mask sensitive information such as personally identifiable information (PII) or
  custom
  regex in user inputs and model responses.

  In addition to the above policies, you can also configure the messages to be
  returned to
  the user if a user input or model response is in violation of the policies
  defined in the guardrail.

  For more information, see [Guardrails for Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails.html)
  in
  the *Amazon Bedrock User Guide*.
  """
  @spec create_guardrail(map(), create_guardrail_request(), list()) ::
          {:ok, create_guardrail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_guardrail_errors()}
  def create_guardrail(%Client{} = client, input, options \\ []) do
    url_path = "/guardrails"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Creates a version of the guardrail.

  Use this API to create a snapshot of the
  guardrail when you are satisfied with a configuration, or to compare the
  configuration with another version.
  """
  @spec create_guardrail_version(map(), String.t(), create_guardrail_version_request(), list()) ::
          {:ok, create_guardrail_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_guardrail_version_errors()}
  def create_guardrail_version(%Client{} = client, guardrail_identifier, input, options \\ []) do
    url_path = "/guardrails/#{AWS.Util.encode_uri(guardrail_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Copies a model to another region so that it can be used there.

  For more information, see [Copy models to be used in other regions](https://docs.aws.amazon.com/bedrock/latest/userguide/copy-model.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec create_model_copy_job(map(), create_model_copy_job_request(), list()) ::
          {:ok, create_model_copy_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_model_copy_job_errors()}
  def create_model_copy_job(%Client{} = client, input, options \\ []) do
    url_path = "/model-copy-jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a fine-tuning job to customize a base model.

  You specify the base foundation model and the location of the training data.
  After the model-customization job completes successfully, your custom model
  resource will be ready to use. Amazon Bedrock returns validation loss metrics
  and output generations after the job completes.

  For information on the format of training and validation data, see [Prepare the datasets](https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-prepare.html).

  Model-customization jobs are asynchronous and the completion time depends on the
  base model and the training/validation data size.
  To monitor a job, use the `GetModelCustomizationJob` operation to retrieve the
  job status.

  For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec create_model_customization_job(map(), create_model_customization_job_request(), list()) ::
          {:ok, create_model_customization_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_model_customization_job_errors()}
  def create_model_customization_job(%Client{} = client, input, options \\ []) do
    url_path = "/model-customization-jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a model import job to import model that you have customized in other
  environments, such as Amazon SageMaker.

  For more information,
  see [Import a customized model](https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html)
  """
  @spec create_model_import_job(map(), create_model_import_job_request(), list()) ::
          {:ok, create_model_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_model_import_job_errors()}
  def create_model_import_job(%Client{} = client, input, options \\ []) do
    url_path = "/model-import-jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a batch inference job to invoke a model on multiple prompts.

  Format your data according to [Format your inference data](https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-data)
  and upload it to an Amazon S3 bucket. For more information, see [Process multiple prompts with batch
  inference](https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference.html).

  The response returns a `jobArn` that you can use to stop or get details about
  the job.
  """
  @spec create_model_invocation_job(map(), create_model_invocation_job_request(), list()) ::
          {:ok, create_model_invocation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_model_invocation_job_errors()}
  def create_model_invocation_job(%Client{} = client, input, options \\ []) do
    url_path = "/model-invocation-job"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates dedicated throughput for a base or custom model with the model units and
  for the duration that you specify.

  For pricing details, see [Amazon Bedrock Pricing](http://aws.amazon.com/bedrock/pricing/). For more information, see
  [Provisioned Throughput](https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec create_provisioned_model_throughput(
          map(),
          create_provisioned_model_throughput_request(),
          list()
        ) ::
          {:ok, create_provisioned_model_throughput_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_provisioned_model_throughput_errors()}
  def create_provisioned_model_throughput(%Client{} = client, input, options \\ []) do
    url_path = "/provisioned-model-throughput"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes a custom model that you created earlier.

  For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec delete_custom_model(map(), String.t(), delete_custom_model_request(), list()) ::
          {:ok, delete_custom_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_custom_model_errors()}
  def delete_custom_model(%Client{} = client, model_identifier, input, options \\ []) do
    url_path = "/custom-models/#{AWS.Util.encode_uri(model_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a guardrail.

    *
  To delete a guardrail, only specify the ARN of the guardrail in the
  `guardrailIdentifier` field. If you delete a guardrail, all of its versions will
  be deleted.

    *
  To delete a version of a guardrail, specify the ARN of the guardrail in the
  `guardrailIdentifier` field and the version in the `guardrailVersion` field.
  """
  @spec delete_guardrail(map(), String.t(), delete_guardrail_request(), list()) ::
          {:ok, delete_guardrail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_guardrail_errors()}
  def delete_guardrail(%Client{} = client, guardrail_identifier, input, options \\ []) do
    url_path = "/guardrails/#{AWS.Util.encode_uri(guardrail_identifier)}"
    headers = []

    {query_params, input} =
      [
        {"guardrailVersion", "guardrailVersion"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes a custom model that you imported earlier.

  For more information,
  see [Import a customized model](https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec delete_imported_model(map(), String.t(), delete_imported_model_request(), list()) ::
          {:ok, delete_imported_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_imported_model_errors()}
  def delete_imported_model(%Client{} = client, model_identifier, input, options \\ []) do
    url_path = "/imported-models/#{AWS.Util.encode_uri(model_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Delete the invocation logging.
  """
  @spec delete_model_invocation_logging_configuration(
          map(),
          delete_model_invocation_logging_configuration_request(),
          list()
        ) ::
          {:ok, delete_model_invocation_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_model_invocation_logging_configuration_errors()}
  def delete_model_invocation_logging_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/logging/modelinvocations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a Provisioned Throughput.

  You can't delete a Provisioned Throughput before the commitment term is over.
  For more information, see [Provisioned Throughput](https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec delete_provisioned_model_throughput(
          map(),
          String.t(),
          delete_provisioned_model_throughput_request(),
          list()
        ) ::
          {:ok, delete_provisioned_model_throughput_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_provisioned_model_throughput_errors()}
  def delete_provisioned_model_throughput(
        %Client{} = client,
        provisioned_model_id,
        input,
        options \\ []
      ) do
    url_path = "/provisioned-model-throughput/#{AWS.Util.encode_uri(provisioned_model_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Get the properties associated with a Amazon Bedrock custom model that you have
  created.For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec get_custom_model(map(), String.t(), list()) ::
          {:ok, get_custom_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_custom_model_errors()}
  def get_custom_model(%Client{} = client, model_identifier, options \\ []) do
    url_path = "/custom-models/#{AWS.Util.encode_uri(model_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the properties associated with a model evaluation job, including the
  status of the job.

  For more information, see [Model evaluation](https://docs.aws.amazon.com/bedrock/latest/userguide/model-evaluation.html).
  """
  @spec get_evaluation_job(map(), String.t(), list()) ::
          {:ok, get_evaluation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_evaluation_job_errors()}
  def get_evaluation_job(%Client{} = client, job_identifier, options \\ []) do
    url_path = "/evaluation-jobs/#{AWS.Util.encode_uri(job_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get details about a Amazon Bedrock foundation model.
  """
  @spec get_foundation_model(map(), String.t(), list()) ::
          {:ok, get_foundation_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_foundation_model_errors()}
  def get_foundation_model(%Client{} = client, model_identifier, options \\ []) do
    url_path = "/foundation-models/#{AWS.Util.encode_uri(model_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details about a guardrail.

  If you don't specify a version, the response returns details for the `DRAFT`
  version.
  """
  @spec get_guardrail(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_guardrail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_guardrail_errors()}
  def get_guardrail(
        %Client{} = client,
        guardrail_identifier,
        guardrail_version \\ nil,
        options \\ []
      ) do
    url_path = "/guardrails/#{AWS.Util.encode_uri(guardrail_identifier)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(guardrail_version) do
        [{"guardrailVersion", guardrail_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets properties associated with a customized model you imported.
  """
  @spec get_imported_model(map(), String.t(), list()) ::
          {:ok, get_imported_model_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_imported_model_errors()}
  def get_imported_model(%Client{} = client, model_identifier, options \\ []) do
    url_path = "/imported-models/#{AWS.Util.encode_uri(model_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an inference profile.

  For more information, see the Amazon Bedrock User Guide.
  """
  @spec get_inference_profile(map(), String.t(), list()) ::
          {:ok, get_inference_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_inference_profile_errors()}
  def get_inference_profile(%Client{} = client, inference_profile_identifier, options \\ []) do
    url_path = "/inference-profiles/#{AWS.Util.encode_uri(inference_profile_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a model copy job.

  For more information, see [Copy models to be used in other regions](https://docs.aws.amazon.com/bedrock/latest/userguide/copy-model.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec get_model_copy_job(map(), String.t(), list()) ::
          {:ok, get_model_copy_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_model_copy_job_errors()}
  def get_model_copy_job(%Client{} = client, job_arn, options \\ []) do
    url_path = "/model-copy-jobs/#{AWS.Util.encode_uri(job_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the properties associated with a model-customization job, including
  the status of the job.

  For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec get_model_customization_job(map(), String.t(), list()) ::
          {:ok, get_model_customization_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_model_customization_job_errors()}
  def get_model_customization_job(%Client{} = client, job_identifier, options \\ []) do
    url_path = "/model-customization-jobs/#{AWS.Util.encode_uri(job_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the properties associated with import model job, including the status
  of the
  job.

  For more information,
  see [Import a customized model](https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec get_model_import_job(map(), String.t(), list()) ::
          {:ok, get_model_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_model_import_job_errors()}
  def get_model_import_job(%Client{} = client, job_identifier, options \\ []) do
    url_path = "/model-import-jobs/#{AWS.Util.encode_uri(job_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details about a batch inference job.

  For more information, see [View details about a batch inference job](https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-manage.html#batch-inference-view)
  """
  @spec get_model_invocation_job(map(), String.t(), list()) ::
          {:ok, get_model_invocation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_model_invocation_job_errors()}
  def get_model_invocation_job(%Client{} = client, job_identifier, options \\ []) do
    url_path = "/model-invocation-job/#{AWS.Util.encode_uri(job_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the current configuration values for model invocation logging.
  """
  @spec get_model_invocation_logging_configuration(map(), list()) ::
          {:ok, get_model_invocation_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_model_invocation_logging_configuration_errors()}
  def get_model_invocation_logging_configuration(%Client{} = client, options \\ []) do
    url_path = "/logging/modelinvocations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details for a Provisioned Throughput.

  For more information, see [Provisioned Throughput](https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec get_provisioned_model_throughput(map(), String.t(), list()) ::
          {:ok, get_provisioned_model_throughput_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_provisioned_model_throughput_errors()}
  def get_provisioned_model_throughput(%Client{} = client, provisioned_model_id, options \\ []) do
    url_path = "/provisioned-model-throughput/#{AWS.Util.encode_uri(provisioned_model_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the custom models that you have created with the
  `CreateModelCustomizationJob` operation.

  For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec list_custom_models(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_custom_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_custom_models_errors()}
  def list_custom_models(
        %Client{} = client,
        base_model_arn_equals \\ nil,
        creation_time_after \\ nil,
        creation_time_before \\ nil,
        foundation_model_arn_equals \\ nil,
        is_owned \\ nil,
        max_results \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        options \\ []
      ) do
    url_path = "/custom-models"
    headers = []
    query_params = []

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(is_owned) do
        [{"isOwned", is_owned} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(foundation_model_arn_equals) do
        [{"foundationModelArnEquals", foundation_model_arn_equals} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_before) do
        [{"creationTimeBefore", creation_time_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_after) do
        [{"creationTimeAfter", creation_time_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(base_model_arn_equals) do
        [{"baseModelArnEquals", base_model_arn_equals} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists model evaluation jobs.
  """
  @spec list_evaluation_jobs(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_evaluation_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_evaluation_jobs_errors()}
  def list_evaluation_jobs(
        %Client{} = client,
        creation_time_after \\ nil,
        creation_time_before \\ nil,
        max_results \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        status_equals \\ nil,
        options \\ []
      ) do
    url_path = "/evaluation-jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status_equals) do
        [{"statusEquals", status_equals} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_before) do
        [{"creationTimeBefore", creation_time_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_after) do
        [{"creationTimeAfter", creation_time_after} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon Bedrock foundation models that you can use.

  You can filter the results with the request parameters. For more information,
  see [Foundation models](https://docs.aws.amazon.com/bedrock/latest/userguide/foundation-models.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec list_foundation_models(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_foundation_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_foundation_models_errors()}
  def list_foundation_models(
        %Client{} = client,
        by_customization_type \\ nil,
        by_inference_type \\ nil,
        by_output_modality \\ nil,
        by_provider \\ nil,
        options \\ []
      ) do
    url_path = "/foundation-models"
    headers = []
    query_params = []

    query_params =
      if !is_nil(by_provider) do
        [{"byProvider", by_provider} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_output_modality) do
        [{"byOutputModality", by_output_modality} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_inference_type) do
        [{"byInferenceType", by_inference_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_customization_type) do
        [{"byCustomizationType", by_customization_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists details about all the guardrails in an account.

  To list the `DRAFT` version of all your guardrails, don't specify the
  `guardrailIdentifier` field. To list all versions of a guardrail, specify the
  ARN of the guardrail in the `guardrailIdentifier` field.

  You can set the maximum number of results to return in a response in the
  `maxResults` field. If there are more results than the number you set, the
  response returns a `nextToken` that you can send in another `ListGuardrails`
  request to see the next batch of results.
  """
  @spec list_guardrails(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_guardrails_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_guardrails_errors()}
  def list_guardrails(
        %Client{} = client,
        guardrail_identifier \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/guardrails"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(guardrail_identifier) do
        [{"guardrailIdentifier", guardrail_identifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of models you've imported.

  You can filter the results to return based on one or more criteria.
  For more information,
  see [Import a customized model](https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec list_imported_models(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_imported_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_imported_models_errors()}
  def list_imported_models(
        %Client{} = client,
        creation_time_after \\ nil,
        creation_time_before \\ nil,
        max_results \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        options \\ []
      ) do
    url_path = "/imported-models"
    headers = []
    query_params = []

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_before) do
        [{"creationTimeBefore", creation_time_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_after) do
        [{"creationTimeAfter", creation_time_after} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of inference profiles that you can use.
  """
  @spec list_inference_profiles(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_inference_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_inference_profiles_errors()}
  def list_inference_profiles(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/inference-profiles"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of model copy jobs that you have submitted.

  You can filter the jobs to return based on
  one or more criteria. For more information, see [Copy models to be used in other regions](https://docs.aws.amazon.com/bedrock/latest/userguide/copy-model.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec list_model_copy_jobs(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_model_copy_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_model_copy_jobs_errors()}
  def list_model_copy_jobs(
        %Client{} = client,
        creation_time_after \\ nil,
        creation_time_before \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        source_account_equals \\ nil,
        source_model_arn_equals \\ nil,
        status_equals \\ nil,
        target_model_name_contains \\ nil,
        options \\ []
      ) do
    url_path = "/model-copy-jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(target_model_name_contains) do
        [{"outputModelNameContains", target_model_name_contains} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status_equals) do
        [{"statusEquals", status_equals} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(source_model_arn_equals) do
        [{"sourceModelArnEquals", source_model_arn_equals} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(source_account_equals) do
        [{"sourceAccountEquals", source_account_equals} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_before) do
        [{"creationTimeBefore", creation_time_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_after) do
        [{"creationTimeAfter", creation_time_after} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of model customization jobs that you have submitted.

  You can filter the jobs to return based on
  one or more criteria.

  For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec list_model_customization_jobs(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_model_customization_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_model_customization_jobs_errors()}
  def list_model_customization_jobs(
        %Client{} = client,
        creation_time_after \\ nil,
        creation_time_before \\ nil,
        max_results \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        status_equals \\ nil,
        options \\ []
      ) do
    url_path = "/model-customization-jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status_equals) do
        [{"statusEquals", status_equals} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_before) do
        [{"creationTimeBefore", creation_time_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_after) do
        [{"creationTimeAfter", creation_time_after} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of import jobs you've submitted.

  You can filter the results to return based on one or more criteria.
  For more information,
  see [Import a customized model](https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec list_model_import_jobs(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_model_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_model_import_jobs_errors()}
  def list_model_import_jobs(
        %Client{} = client,
        creation_time_after \\ nil,
        creation_time_before \\ nil,
        max_results \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        status_equals \\ nil,
        options \\ []
      ) do
    url_path = "/model-import-jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status_equals) do
        [{"statusEquals", status_equals} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_before) do
        [{"creationTimeBefore", creation_time_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_after) do
        [{"creationTimeAfter", creation_time_after} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all batch inference jobs in the account.

  For more information, see [View details about a batch inference job](https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-manage.html#batch-inference-view).
  """
  @spec list_model_invocation_jobs(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_model_invocation_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_model_invocation_jobs_errors()}
  def list_model_invocation_jobs(
        %Client{} = client,
        max_results \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        status_equals \\ nil,
        submit_time_after \\ nil,
        submit_time_before \\ nil,
        options \\ []
      ) do
    url_path = "/model-invocation-jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(submit_time_before) do
        [{"submitTimeBefore", submit_time_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(submit_time_after) do
        [{"submitTimeAfter", submit_time_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status_equals) do
        [{"statusEquals", status_equals} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Provisioned Throughputs in the account.

  For more information, see [Provisioned Throughput](https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec list_provisioned_model_throughputs(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_provisioned_model_throughputs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_provisioned_model_throughputs_errors()}
  def list_provisioned_model_throughputs(
        %Client{} = client,
        creation_time_after \\ nil,
        creation_time_before \\ nil,
        max_results \\ nil,
        model_arn_equals \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        status_equals \\ nil,
        options \\ []
      ) do
    url_path = "/provisioned-model-throughputs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status_equals) do
        [{"statusEquals", status_equals} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(model_arn_equals) do
        [{"modelArnEquals", model_arn_equals} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_before) do
        [{"creationTimeBefore", creation_time_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_after) do
        [{"creationTimeAfter", creation_time_after} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the tags associated with the specified resource.

  For more information, see [Tagging resources](https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html) in
  the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/listTagsForResource"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Set the configuration values for model invocation logging.
  """
  @spec put_model_invocation_logging_configuration(
          map(),
          put_model_invocation_logging_configuration_request(),
          list()
        ) ::
          {:ok, put_model_invocation_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_model_invocation_logging_configuration_errors()}
  def put_model_invocation_logging_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/logging/modelinvocations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Stops an in progress model evaluation job.
  """
  @spec stop_evaluation_job(map(), String.t(), stop_evaluation_job_request(), list()) ::
          {:ok, stop_evaluation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_evaluation_job_errors()}
  def stop_evaluation_job(%Client{} = client, job_identifier, input, options \\ []) do
    url_path = "/evaluation-job/#{AWS.Util.encode_uri(job_identifier)}/stop"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Stops an active model customization job.

  For more information, see [Custom models](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec stop_model_customization_job(
          map(),
          String.t(),
          stop_model_customization_job_request(),
          list()
        ) ::
          {:ok, stop_model_customization_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_model_customization_job_errors()}
  def stop_model_customization_job(%Client{} = client, job_identifier, input, options \\ []) do
    url_path = "/model-customization-jobs/#{AWS.Util.encode_uri(job_identifier)}/stop"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Stops a batch inference job.

  You're only charged for tokens that were already processed. For more
  information, see [Stop a batch inference job](https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-manage.html#batch-inference-stop).
  """
  @spec stop_model_invocation_job(map(), String.t(), stop_model_invocation_job_request(), list()) ::
          {:ok, stop_model_invocation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_model_invocation_job_errors()}
  def stop_model_invocation_job(%Client{} = client, job_identifier, input, options \\ []) do
    url_path = "/model-invocation-job/#{AWS.Util.encode_uri(job_identifier)}/stop"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associate tags with a resource.

  For more information, see [Tagging resources](https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html) in
  the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tagResource"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Remove one or more tags from a resource.

  For more information, see [Tagging resources](https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html) in
  the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/untagResource"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a guardrail with the values you specify.

    *
  Specify a `name` and optional `description`.

    *
  Specify messages for when the guardrail successfully blocks a prompt or a model
  response in the `blockedInputMessaging` and `blockedOutputsMessaging` fields.

    *
  Specify topics for the guardrail to deny in the `topicPolicyConfig` object. Each
  [GuardrailTopicConfig](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GuardrailTopicConfig.html) object in the `topicsConfig` list pertains to one topic.

      *
  Give a `name` and `description` so that the guardrail can properly identify the
  topic.

      *
  Specify `DENY` in the `type` field.

      *
  (Optional) Provide up to five prompts that you would categorize as belonging to
  the topic in the `examples` list.

    *
  Specify filter strengths for the harmful categories defined in Amazon Bedrock in
  the `contentPolicyConfig` object. Each
  [GuardrailContentFilterConfig](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GuardrailContentFilterConfig.html)
  object in the `filtersConfig` list pertains to a harmful category. For more
  information, see [Content filters](https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-content-filters).
  For more information about the fields in a content filter, see
  [GuardrailContentFilterConfig](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GuardrailContentFilterConfig.html). 
      *
  Specify the category in the `type` field.

      *
  Specify the strength of the filter for prompts in the `inputStrength` field and
  for model responses in the `strength` field of the
  [GuardrailContentFilterConfig](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GuardrailContentFilterConfig.html).

    *
  (Optional) For security, include the ARN of a KMS key in the `kmsKeyId` field.
  """
  @spec update_guardrail(map(), String.t(), update_guardrail_request(), list()) ::
          {:ok, update_guardrail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_guardrail_errors()}
  def update_guardrail(%Client{} = client, guardrail_identifier, input, options \\ []) do
    url_path = "/guardrails/#{AWS.Util.encode_uri(guardrail_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates the name or associated model for a Provisioned Throughput.

  For more information, see [Provisioned Throughput](https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html)
  in the [Amazon Bedrock User Guide](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html).
  """
  @spec update_provisioned_model_throughput(
          map(),
          String.t(),
          update_provisioned_model_throughput_request(),
          list()
        ) ::
          {:ok, update_provisioned_model_throughput_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_provisioned_model_throughput_errors()}
  def update_provisioned_model_throughput(
        %Client{} = client,
        provisioned_model_id,
        input,
        options \\ []
      ) do
    url_path = "/provisioned-model-throughput/#{AWS.Util.encode_uri(provisioned_model_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
