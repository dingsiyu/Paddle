/* Copyright (c) 2016 PaddlePaddle Authors. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License. */

#define EIGEN_USE_GPU

#include "paddle/fluid/operators/unsqueeze_op.h"

namespace ops = paddle::operators;
REGISTER_OP_CUDA_KERNEL(
    unsqueeze, ops::UnsqueezeKernel<paddle::platform::CUDADeviceContext, float>,
    ops::UnsqueezeKernel<paddle::platform::CUDADeviceContext, double>,
    ops::UnsqueezeKernel<paddle::platform::CUDADeviceContext, int>,
    ops::UnsqueezeKernel<paddle::platform::CUDADeviceContext, int64_t>);
REGISTER_OP_CUDA_KERNEL(
    unsqueeze_grad,
    ops::UnsqueezeGradKernel<paddle::platform::CUDADeviceContext, float>,
    ops::UnsqueezeGradKernel<paddle::platform::CUDADeviceContext, double>,
    ops::UnsqueezeGradKernel<paddle::platform::CUDADeviceContext, int>,
    ops::UnsqueezeGradKernel<paddle::platform::CUDADeviceContext, int64_t>);
