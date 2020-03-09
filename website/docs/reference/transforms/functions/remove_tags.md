---
component_title: "Remove Tags"
description: "The Vector `remove_tags` transform accepts and outputs `metric` events allowing you to remove one or more metric tags."
event_types: ["metric"]
function_category: "shape"
issues_url: https://github.com/timberio/vector/issues?q=is%3Aopen+is%3Aissue+label%3A%22transform%3A+remove_tags%22
min_version: null
service_name: "Remove Tags"
sidebar_label: "remove_tags|[\"metric\"]"
source_url: https://github.com/timberio/vector/tree/master/src/transforms/remove_tags.rs
status: "prod-ready"
title: "Remove Tags Transform"
---

The Vector `remove_tags` transform accepts and outputs [`metric`][docs.data-model.metric] events allowing you to remove one or more metric tags.

<!--
     THIS FILE IS AUTOGENERATED!

     To make changes please edit the template located at:

     website/docs/reference/transforms/remove_tags.md.erb
-->

## Configuration

import CodeHeader from '@site/src/components/CodeHeader';

<CodeHeader fileName="vector.toml" learnMoreUrl="/docs/setup/configuration/"/ >

```toml
[transforms.my_transform_id]
  type = "remove_tags" # required
  inputs = ["my-source-id"] # required
  tags = ["tag1", "tag2"] # required
```

## Options

import Fields from '@site/src/components/Fields';

import Field from '@site/src/components/Field';

<Fields filters={true}>


<Field
  common={true}
  defaultValue={null}
  enumValues={null}
  examples={[["tag1","tag2"]]}
  groups={[]}
  name={"tags"}
  path={null}
  relevantWhen={null}
  required={true}
  templateable={false}
  type={"[string]"}
  unit={null}
  >

### tags

The tag names to drop.


</Field>


</Fields>

## How It Works

### Environment Variables

Environment variables are supported through all of Vector's configuration.
Simply add `${MY_ENV_VAR}` in your Vector configuration file and the variable
will be replaced before being evaluated.

You can learn more in the [Environment Variables][docs.configuration#environment-variables]
section.


[docs.configuration#environment-variables]: /docs/setup/configuration/#environment-variables
[docs.data-model.metric]: /docs/about/data-model/metric/