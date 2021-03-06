local function GetIconTextAndBackgroundVisInfoData(widgetID)
	local widgetInfo = C_UIWidgetManager.GetIconTextAndBackgroundWidgetVisualizationInfo(widgetID);
	if widgetInfo and widgetInfo.shownState ~= Enum.WidgetShownState.Hidden then
		return widgetInfo;
	end
end

UIWidgetManager:RegisterWidgetVisTypeTemplate(Enum.UIWidgetVisualizationType.IconTextAndBackground, {frameType = "FRAME", frameTemplate = "UIWidgetTemplateIconTextAndBackground"}, GetIconTextAndBackgroundVisInfoData);

UIWidgetTemplateIconTextAndBackgroundMixin = CreateFromMixins(UIWidgetBaseTemplateMixin);

local textureKitRegions = {
	["Icon"] = "%s-icon",
	["Glow"] = "%s-glow",
};

function UIWidgetTemplateIconTextAndBackgroundMixin:Setup(widgetInfo, widgetContainer)
	UIWidgetBaseTemplateMixin.Setup(self, widgetInfo, widgetContainer);
	SetupTextureKits(widgetInfo.textureKitID, self, textureKitRegions, TextureKitConstants.SetVisiblity);
	self.Text:SetText(widgetInfo.text);
end
