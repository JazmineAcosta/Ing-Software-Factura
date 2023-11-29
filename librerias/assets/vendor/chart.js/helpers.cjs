/*!
 * Chart.js v4.4.0
 * https://www.chartjs.org
 * (c) 2023 Chart.js Contributors
 * Released under the MIT License
 */
"use strict";

var helpers_segment = require("./chunks/helpers.segment.cjs");
require("@kurkle/color");

exports.HALF_PI = helpers_segment.HALF_PI;
exports.INFINITY = helpers_segment.INFINITY;
exports.PI = helpers_segment.PI;
exports.PITAU = helpers_segment.PITAU;
exports.QUARTER_PI = helpers_segment.QUARTER_PI;
exports.RAD_PER_DEG = helpers_segment.RAD_PER_DEG;
exports.TAU = helpers_segment.TAU;
exports.TWO_THIRDS_PI = helpers_segment.TWO_THIRDS_PI;
exports._addGrace = helpers_segment._addGrace;
exports._alignPixel = helpers_segment._alignPixel;
exports._alignStartEnd = helpers_segment._alignStartEnd;
exports._angleBetween = helpers_segment._angleBetween;
exports._angleDiff = helpers_segment._angleDiff;
exports._arrayUnique = helpers_segment._arrayUnique;
exports._attachContext = helpers_segment._attachContext;
exports._bezierCurveTo = helpers_segment._bezierCurveTo;
exports._bezierInterpolation = helpers_segment._bezierInterpolation;
exports._boundSegment = helpers_segment._boundSegment;
exports._boundSegments = helpers_segment._boundSegments;
exports._capitalize = helpers_segment._capitalize;
exports._computeSegments = helpers_segment._computeSegments;
exports._createResolver = helpers_segment._createResolver;
exports._decimalPlaces = helpers_segment._decimalPlaces;
exports._deprecated = helpers_segment._deprecated;
exports._descriptors = helpers_segment._descriptors;
exports._elementsEqual = helpers_segment._elementsEqual;
exports._factorize = helpers_segment._factorize;
exports._filterBetween = helpers_segment._filterBetween;
exports._getParentNode = helpers_segment._getParentNode;
exports._getStartAndCountOfVisiblePoints =
  helpers_segment._getStartAndCountOfVisiblePoints;
exports._int16Range = helpers_segment._int16Range;
exports._isBetween = helpers_segment._isBetween;
exports._isClickEvent = helpers_segment._isClickEvent;
exports._isDomSupported = helpers_segment._isDomSupported;
exports._isPointInArea = helpers_segment._isPointInArea;
exports._limitValue = helpers_segment._limitValue;
exports._longestText = helpers_segment._longestText;
exports._lookup = helpers_segment._lookup;
exports._lookupByKey = helpers_segment._lookupByKey;
exports._measureText = helpers_segment._measureText;
exports._merger = helpers_segment._merger;
exports._mergerIf = helpers_segment._mergerIf;
exports._normalizeAngle = helpers_segment._normalizeAngle;
exports._parseObjectDataRadialScale =
  helpers_segment._parseObjectDataRadialScale;
exports._pointInLine = helpers_segment._pointInLine;
exports._readValueToProps = helpers_segment._readValueToProps;
exports._rlookupByKey = helpers_segment._rlookupByKey;
exports._scaleRangesChanged = helpers_segment._scaleRangesChanged;
exports._setMinAndMaxByKey = helpers_segment._setMinAndMaxByKey;
exports._splitKey = helpers_segment._splitKey;
exports._steppedInterpolation = helpers_segment._steppedInterpolation;
exports._steppedLineTo = helpers_segment._steppedLineTo;
exports._textX = helpers_segment._textX;
exports._toLeftRightCenter = helpers_segment._toLeftRightCenter;
exports._updateBezierControlPoints = helpers_segment._updateBezierControlPoints;
exports.addRoundedRectPath = helpers_segment.addRoundedRectPath;
exports.almostEquals = helpers_segment.almostEquals;
exports.almostWhole = helpers_segment.almostWhole;
exports.callback = helpers_segment.callback;
exports.clearCanvas = helpers_segment.clearCanvas;
exports.clipArea = helpers_segment.clipArea;
exports.clone = helpers_segment.clone;
exports.color = helpers_segment.color;
exports.createContext = helpers_segment.createContext;
exports.debounce = helpers_segment.debounce;
exports.defined = helpers_segment.defined;
exports.distanceBetweenPoints = helpers_segment.distanceBetweenPoints;
exports.drawPoint = helpers_segment.drawPoint;
exports.drawPointLegend = helpers_segment.drawPointLegend;
exports.each = helpers_segment.each;
exports.easingEffects = helpers_segment.effects;
exports.finiteOrDefault = helpers_segment.finiteOrDefault;
exports.fontString = helpers_segment.fontString;
exports.formatNumber = helpers_segment.formatNumber;
exports.getAngleFromPoint = helpers_segment.getAngleFromPoint;
exports.getHoverColor = helpers_segment.getHoverColor;
exports.getMaximumSize = helpers_segment.getMaximumSize;
exports.getRelativePosition = helpers_segment.getRelativePosition;
exports.getRtlAdapter = helpers_segment.getRtlAdapter;
exports.getStyle = helpers_segment.getStyle;
exports.isArray = helpers_segment.isArray;
exports.isFinite = helpers_segment.isNumberFinite;
exports.isFunction = helpers_segment.isFunction;
exports.isNullOrUndef = helpers_segment.isNullOrUndef;
exports.isNumber = helpers_segment.isNumber;
exports.isObject = helpers_segment.isObject;
exports.isPatternOrGradient = helpers_segment.isPatternOrGradient;
exports.listenArrayEvents = helpers_segment.listenArrayEvents;
exports.log10 = helpers_segment.log10;
exports.merge = helpers_segment.merge;
exports.mergeIf = helpers_segment.mergeIf;
exports.niceNum = helpers_segment.niceNum;
exports.noop = helpers_segment.noop;
exports.overrideTextDirection = helpers_segment.overrideTextDirection;
exports.readUsedSize = helpers_segment.readUsedSize;
exports.renderText = helpers_segment.renderText;
exports.requestAnimFrame = helpers_segment.requestAnimFrame;
exports.resolve = helpers_segment.resolve;
exports.resolveObjectKey = helpers_segment.resolveObjectKey;
exports.restoreTextDirection = helpers_segment.restoreTextDirection;
exports.retinaScale = helpers_segment.retinaScale;
exports.setsEqual = helpers_segment.setsEqual;
exports.sign = helpers_segment.sign;
exports.splineCurve = helpers_segment.splineCurve;
exports.splineCurveMonotone = helpers_segment.splineCurveMonotone;
exports.supportsEventListenerOptions =
  helpers_segment.supportsEventListenerOptions;
exports.throttled = helpers_segment.throttled;
exports.toDegrees = helpers_segment.toDegrees;
exports.toDimension = helpers_segment.toDimension;
exports.toFont = helpers_segment.toFont;
exports.toFontString = helpers_segment.toFontString;
exports.toLineHeight = helpers_segment.toLineHeight;
exports.toPadding = helpers_segment.toPadding;
exports.toPercentage = helpers_segment.toPercentage;
exports.toRadians = helpers_segment.toRadians;
exports.toTRBL = helpers_segment.toTRBL;
exports.toTRBLCorners = helpers_segment.toTRBLCorners;
exports.uid = helpers_segment.uid;
exports.unclipArea = helpers_segment.unclipArea;
exports.unlistenArrayEvents = helpers_segment.unlistenArrayEvents;
exports.valueOrDefault = helpers_segment.valueOrDefault;
//# sourceMappingURL=helpers.cjs.map
