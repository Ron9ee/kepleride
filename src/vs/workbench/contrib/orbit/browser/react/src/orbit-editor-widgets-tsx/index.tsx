/*--------------------------------------------------------------------------------------
 *  Copyright 2025 sarim-developer All rights reserved.
 *  Licensed under the Apache License, Version 2.0. See LICENSE.txt for more information.
 *--------------------------------------------------------------------------------------*/

import { mountFnGenerator } from '../util/mountFnGenerator.js'
import { VoidCommandBarMain } from './KeplerCommandBar.js'
import { VoidSelectionHelperMain } from './KeplerSelectionHelper.js'

export const mountVoidCommandBar = mountFnGenerator(VoidCommandBarMain)

export const mountVoidSelectionHelper = mountFnGenerator(VoidSelectionHelperMain)

