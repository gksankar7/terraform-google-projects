/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "name" {
  description = "The name for the project"
  type        = string
}

variable "random_project_id" {
  description = "Adds a suffix of 4 random characters to the `project_id`"
  type        = bool
  default     = false
}

variable "per_projects_admins" {
  type        = map(string)
  description = "IAM-style members per projects who will get extended permissions."
  default     = {}
}

variable "all_projects_admins" {
  type        = list(string)
  description = "List of IAM-style members that will get the extended permissions across all the projects."
  default     = []
}
