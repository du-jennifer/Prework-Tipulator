# Pre-work - Tipulator

**Tipulator** is a tip calculator application for iOS.

Submitted by: **Jennifer Du**

Time spent: 6.5 hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality! 
- [x] Settings screen where user can adjust default tip percentages 
- [x] Added constraints to adjust to different devices

## Video Walkthrough

Here's a walkthrough of implemented user stories:


![](https://i.imgur.com/gKsjjeK.gif)


GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

For this CodePath iOS app assignment, it was difficult to implement the functionality of adjusting tip percentages in the settings screen. A challenge I encountered was that the segment control's text didn't reflect the tip percentages adjustment in the settings page, but rather a view controller cycle later. I realized that my changeDefaultValues function (initially connected to the three tip text fields) adjusted the default tip percentages after it registers that I entered values in the text field, rather than during. I fixed this by implementing a save button so that the changeDefaultValues function is associated with the action of changing the defaults via the button. This way, changing the defaults would be immediately executed after registering all the values I entered in the text fields.

## License

    Copyright [2021] [Jennifer Du]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
