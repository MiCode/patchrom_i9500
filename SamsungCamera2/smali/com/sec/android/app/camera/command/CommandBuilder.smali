.class public Lcom/sec/android/app/camera/command/CommandBuilder;
.super Ljava/lang/Object;
.source "CommandBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandBuilder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 1
    .parameter "id"
    .parameter "activityContext"
    .parameter "glParentView"
    .parameter "menuDepot"

    .prologue
    .line 34
    const/4 v0, 0x3

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    return-object v0
.end method

.method public static buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 11
    .parameter "id"
    .parameter "activityContext"
    .parameter "glParentView"
    .parameter "menuDepot"
    .parameter "zOrder"

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 40
    const/16 v1, 0x63

    if-ne p0, v1, :cond_1

    .line 41
    new-instance v0, Lcom/sec/android/app/camera/command/EmptyCommand;

    invoke-direct {v0}, Lcom/sec/android/app/camera/command/EmptyCommand;-><init>()V

    .line 641
    :cond_0
    :goto_0
    :sswitch_0
    return-object v0

    .line 43
    :cond_1
    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v4

    .line 48
    .local v4, res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    if-eqz v4, :cond_e

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, command:Lcom/sec/android/app/camera/command/MenuCommand;
    sparse-switch p0, :sswitch_data_0

    .line 219
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 220
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 53
    :sswitch_1
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 54
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 57
    :sswitch_2
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 58
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 61
    :sswitch_3
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 62
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 66
    :sswitch_4
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 67
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 70
    :sswitch_5
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getBaseMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3, v4}, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 71
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 74
    :sswitch_6
    if-ne p4, v3, :cond_2

    .line 75
    new-instance v0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto :goto_0

    .line 77
    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_2
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 78
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 82
    :sswitch_7
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchCameraResolutionMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchCameraResolutionMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 83
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchCameraResolutionMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 86
    :sswitch_8
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchCamcorderResolutionMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchCamcorderResolutionMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 87
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchCamcorderResolutionMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 90
    :sswitch_9
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 91
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 94
    :sswitch_a
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 95
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 98
    :sswitch_b
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchRecordingModeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchRecordingModeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 99
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchRecordingModeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 102
    :sswitch_c
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchQuickSettingMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchQuickSettingMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 103
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchQuickSettingMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchQuickSettingMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 106
    :sswitch_d
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchPetDetSoundMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchPetDetSoundMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 107
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchPetDetSoundMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchPetDetSoundMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 110
    :sswitch_e
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchStoryShotMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchStoryShotMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 111
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchStoryShotMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchStoryShotMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 114
    :sswitch_f
    if-ne p4, v3, :cond_3

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_3

    .line 115
    new-instance v0, Lcom/sec/android/app/camera/command/VoiceCommandMenuSelectCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/VoiceCommandMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 117
    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_3
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 118
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 122
    :sswitch_10
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result p0

    .line 123
    new-instance v0, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    .line 124
    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    goto/16 :goto_0

    .line 126
    :sswitch_11
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;I)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 127
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchChatOnBuddyCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 130
    :sswitch_12
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 131
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 136
    :sswitch_13
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchShareModeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchShareModeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .line 137
    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    goto/16 :goto_0

    .line 139
    :sswitch_14
    if-ne p4, v3, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_4

    .line 140
    new-instance v0, Lcom/sec/android/app/camera/command/AutoNightDetectionSelectCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/AutoNightDetectionSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 142
    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_4
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 143
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 147
    :sswitch_15
    if-ne p4, v3, :cond_5

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_5

    .line 148
    new-instance v0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 150
    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_5
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 151
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 155
    :sswitch_16
    if-ne p4, v3, :cond_6

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_6

    .line 156
    new-instance v0, Lcom/sec/android/app/camera/command/FaceDetectionMenuSelectCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/FaceDetectionMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 158
    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_6
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 159
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 163
    :sswitch_17
    if-ne p4, v3, :cond_7

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_7

    .line 164
    new-instance v0, Lcom/sec/android/app/camera/command/GpsSelectCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/GpsSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 166
    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_7
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 167
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 171
    :sswitch_18
    if-ne p4, v3, :cond_8

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_8

    .line 172
    new-instance v0, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 174
    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_8
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 175
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 179
    :sswitch_19
    if-ne p4, v3, :cond_9

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_9

    .line 180
    new-instance v0, Lcom/sec/android/app/camera/command/CameraAntishakeSelectCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/CameraAntishakeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 182
    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_9
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 183
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 187
    :sswitch_1a
    if-ne p4, v3, :cond_a

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_a

    .line 188
    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderAntishakeSelectCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/CamcorderAntishakeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 190
    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_a
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 191
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 195
    :sswitch_1b
    if-ne p4, v3, :cond_b

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_b

    .line 196
    new-instance v0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 198
    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_b
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 199
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 203
    :sswitch_1c
    if-ne p4, v3, :cond_c

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_c

    .line 204
    new-instance v0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 206
    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_c
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 207
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 211
    :sswitch_1d
    if-ne p4, v3, :cond_d

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-gt v1, v2, :cond_d

    .line 212
    new-instance v0, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p0, v7}, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 214
    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_d
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 215
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 226
    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_e
    sparse-switch p0, :sswitch_data_1

    .line 639
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    new-instance v0, Lcom/sec/android/app/camera/command/ExternalEffectMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ExternalEffectMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 231
    :sswitch_1e
    new-instance v0, Lcom/sec/android/app/camera/command/CameraModeSelectCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/CameraModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    .line 236
    :sswitch_1f
    new-instance v0, Lcom/sec/android/app/camera/command/DualModeSelectCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/DualModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    .line 266
    :sswitch_20
    new-instance v0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 282
    :sswitch_21
    new-instance v0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 286
    :sswitch_22
    new-instance v0, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 292
    :sswitch_23
    new-instance v0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 298
    :sswitch_24
    new-instance v0, Lcom/sec/android/app/camera/command/TimerSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/TimerSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 331
    :sswitch_25
    new-instance v0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 342
    :sswitch_26
    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 358
    :sswitch_27
    new-instance v0, Lcom/sec/android/app/camera/command/ResetSettingsCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/ResetSettingsCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    .line 367
    :sswitch_28
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 368
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 376
    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :sswitch_29
    new-instance v0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 386
    :sswitch_2a
    new-instance v0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 432
    :sswitch_2b
    new-instance v0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 448
    :sswitch_2c
    new-instance v0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 454
    :sswitch_2d
    new-instance v0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 459
    :sswitch_2e
    new-instance v0, Lcom/sec/android/app/camera/command/CameraAntishakeSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/CameraAntishakeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 465
    :sswitch_2f
    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderAntishakeSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/CamcorderAntishakeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 470
    :sswitch_30
    new-instance v0, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 476
    :sswitch_31
    new-instance v0, Lcom/sec/android/app/camera/command/CameraQualityMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CameraQualityMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 482
    :sswitch_32
    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 487
    :sswitch_33
    new-instance v0, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 494
    :sswitch_34
    new-instance v0, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 500
    :sswitch_35
    new-instance v5, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, v4

    move v10, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;I)V

    .line 501
    .local v5, snsCommand:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-virtual {v5, p4}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    move-object v0, v5

    .line 502
    goto/16 :goto_0

    .line 505
    .end local v5           #snsCommand:Lcom/sec/android/app/camera/command/MenuCommand;
    :sswitch_36
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    goto/16 :goto_0

    .line 510
    :sswitch_37
    new-instance v0, Lcom/sec/android/app/camera/command/GpsSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/GpsSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 515
    :sswitch_38
    new-instance v0, Lcom/sec/android/app/camera/command/ShutterSoundMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ShutterSoundMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 520
    :sswitch_39
    new-instance v0, Lcom/sec/android/app/camera/command/FlipMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/FlipMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 524
    :sswitch_3a
    new-instance v0, Lcom/sec/android/app/camera/command/StorageMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/StorageMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 533
    :sswitch_3b
    new-instance v0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 541
    :sswitch_3c
    new-instance v0, Lcom/sec/android/app/camera/command/AudioRecordingSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/AudioRecordingSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 546
    :sswitch_3d
    new-instance v0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 551
    :sswitch_3e
    new-instance v0, Lcom/sec/android/app/camera/command/ContextualFilenameSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ContextualFilenameSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 556
    :sswitch_3f
    new-instance v0, Lcom/sec/android/app/camera/command/VoiceCommandMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/VoiceCommandMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 565
    :sswitch_40
    new-instance v0, Lcom/sec/android/app/camera/command/ShareModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ShareModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 570
    :sswitch_41
    new-instance v0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 577
    :sswitch_42
    new-instance v0, Lcom/sec/android/app/camera/command/PetDetSoundMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/PetDetSoundMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 583
    :sswitch_43
    new-instance v0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 589
    :sswitch_44
    new-instance v0, Lcom/sec/android/app/camera/command/StoryShotMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/StoryShotMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 595
    :sswitch_45
    new-instance v0, Lcom/sec/android/app/camera/command/BeautyFaceModeMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/BeautyFaceModeMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 601
    :sswitch_46
    new-instance v0, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 606
    :sswitch_47
    new-instance v0, Lcom/sec/android/app/camera/command/FaceDetectionMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/FaceDetectionMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 612
    :sswitch_48
    new-instance v0, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 618
    :sswitch_49
    new-instance v0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    .line 623
    :sswitch_4a
    new-instance v0, Lcom/sec/android/app/camera/command/AutoNightDetectionSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/AutoNightDetectionSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    .line 626
    :sswitch_4b
    new-instance v0, Lcom/sec/android/app/camera/command/ExternalFilterDownloadCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/ExternalFilterDownloadCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    .line 628
    :sswitch_4c
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 629
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 632
    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :sswitch_4d
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchPreloadEffectTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchPreloadEffectTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 633
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchPreloadEffectTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchPreloadEffectTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x7 -> :sswitch_3
        0x8 -> :sswitch_a
        0xb -> :sswitch_1c
        0xd -> :sswitch_19
        0x11 -> :sswitch_1d
        0x12 -> :sswitch_4
        0x13 -> :sswitch_18
        0x14 -> :sswitch_17
        0x1b -> :sswitch_2
        0x27 -> :sswitch_5
        0x28 -> :sswitch_1
        0x35 -> :sswitch_13
        0x3f -> :sswitch_15
        0x42 -> :sswitch_c
        0x47 -> :sswitch_f
        0x48 -> :sswitch_d
        0x49 -> :sswitch_1b
        0x4d -> :sswitch_e
        0x53 -> :sswitch_11
        0x55 -> :sswitch_12
        0x56 -> :sswitch_16
        0x5d -> :sswitch_14
        0xbb8 -> :sswitch_b
        0xbb9 -> :sswitch_8
        0xbbf -> :sswitch_1a
        0xbc4 -> :sswitch_10
        0xbc5 -> :sswitch_4
    .end sparse-switch

    .line 226
    :sswitch_data_1
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1c -> :sswitch_0
        0x1d -> :sswitch_0
        0x1e -> :sswitch_27
        0x20 -> :sswitch_28
        0x21 -> :sswitch_28
        0x24 -> :sswitch_1e
        0x25 -> :sswitch_28
        0x26 -> :sswitch_28
        0x33 -> :sswitch_0
        0x37 -> :sswitch_35
        0x38 -> :sswitch_36
        0x39 -> :sswitch_36
        0x3a -> :sswitch_35
        0x40 -> :sswitch_0
        0x51 -> :sswitch_45
        0x57 -> :sswitch_1f
        0xc8 -> :sswitch_1e
        0xc9 -> :sswitch_1e
        0xca -> :sswitch_1e
        0x12c -> :sswitch_20
        0x12d -> :sswitch_20
        0x12e -> :sswitch_20
        0x12f -> :sswitch_20
        0x130 -> :sswitch_20
        0x131 -> :sswitch_20
        0x133 -> :sswitch_20
        0x135 -> :sswitch_20
        0x136 -> :sswitch_20
        0x137 -> :sswitch_20
        0x139 -> :sswitch_20
        0x13a -> :sswitch_20
        0x13c -> :sswitch_20
        0x13e -> :sswitch_20
        0x13f -> :sswitch_20
        0x140 -> :sswitch_20
        0x141 -> :sswitch_20
        0x142 -> :sswitch_20
        0x143 -> :sswitch_20
        0x145 -> :sswitch_20
        0x147 -> :sswitch_20
        0x148 -> :sswitch_20
        0x149 -> :sswitch_20
        0x14b -> :sswitch_20
        0x14c -> :sswitch_20
        0x14d -> :sswitch_20
        0x14e -> :sswitch_20
        0x14f -> :sswitch_20
        0x1f4 -> :sswitch_21
        0x1f5 -> :sswitch_21
        0x1f6 -> :sswitch_21
        0x1f7 -> :sswitch_21
        0x1f8 -> :sswitch_21
        0x1f9 -> :sswitch_21
        0x1fa -> :sswitch_21
        0x1fb -> :sswitch_21
        0x1fc -> :sswitch_21
        0x1fd -> :sswitch_21
        0x1fe -> :sswitch_21
        0x1ff -> :sswitch_21
        0x200 -> :sswitch_21
        0x201 -> :sswitch_21
        0x258 -> :sswitch_29
        0x259 -> :sswitch_29
        0x25a -> :sswitch_29
        0x25b -> :sswitch_29
        0x2bc -> :sswitch_23
        0x2bd -> :sswitch_23
        0x2be -> :sswitch_23
        0x2bf -> :sswitch_23
        0x320 -> :sswitch_24
        0x321 -> :sswitch_24
        0x323 -> :sswitch_24
        0x324 -> :sswitch_24
        0x384 -> :sswitch_2a
        0x385 -> :sswitch_2a
        0x386 -> :sswitch_2a
        0x387 -> :sswitch_2a
        0x388 -> :sswitch_2a
        0x389 -> :sswitch_2a
        0x38a -> :sswitch_2a
        0x3e8 -> :sswitch_2b
        0x3e9 -> :sswitch_2b
        0x3ea -> :sswitch_2b
        0x3eb -> :sswitch_2b
        0x3f7 -> :sswitch_2b
        0x3f8 -> :sswitch_2b
        0x3f9 -> :sswitch_2b
        0x3fa -> :sswitch_2b
        0x3fb -> :sswitch_2b
        0x3fc -> :sswitch_2b
        0x3fd -> :sswitch_2b
        0x3fe -> :sswitch_2b
        0x3ff -> :sswitch_2b
        0x404 -> :sswitch_2b
        0x405 -> :sswitch_2b
        0x406 -> :sswitch_2b
        0x407 -> :sswitch_2b
        0x408 -> :sswitch_2b
        0x409 -> :sswitch_2b
        0x40a -> :sswitch_2b
        0x40b -> :sswitch_2b
        0x40c -> :sswitch_2b
        0x40d -> :sswitch_2b
        0x40e -> :sswitch_2b
        0x40f -> :sswitch_2b
        0x410 -> :sswitch_2b
        0x411 -> :sswitch_2b
        0x412 -> :sswitch_2b
        0x413 -> :sswitch_2b
        0x414 -> :sswitch_2b
        0x415 -> :sswitch_2b
        0x41a -> :sswitch_2b
        0x41b -> :sswitch_2b
        0x41c -> :sswitch_2b
        0x41d -> :sswitch_2b
        0x41e -> :sswitch_2b
        0x41f -> :sswitch_2b
        0x420 -> :sswitch_2b
        0x421 -> :sswitch_2b
        0x422 -> :sswitch_2b
        0x423 -> :sswitch_2b
        0x424 -> :sswitch_2b
        0x44c -> :sswitch_2c
        0x44d -> :sswitch_2c
        0x44e -> :sswitch_2c
        0x44f -> :sswitch_2c
        0x450 -> :sswitch_2c
        0x451 -> :sswitch_2c
        0x452 -> :sswitch_2c
        0x453 -> :sswitch_2c
        0x454 -> :sswitch_2c
        0x455 -> :sswitch_2c
        0x456 -> :sswitch_2c
        0x457 -> :sswitch_2c
        0x458 -> :sswitch_2c
        0x4b0 -> :sswitch_2d
        0x4b1 -> :sswitch_2d
        0x4b2 -> :sswitch_2d
        0x578 -> :sswitch_2e
        0x579 -> :sswitch_2e
        0x57a -> :sswitch_2f
        0x57b -> :sswitch_2f
        0x57c -> :sswitch_2f
        0x5dc -> :sswitch_30
        0x5dd -> :sswitch_30
        0x6a4 -> :sswitch_31
        0x6a5 -> :sswitch_31
        0x6a6 -> :sswitch_31
        0x6a7 -> :sswitch_32
        0x6a8 -> :sswitch_32
        0x6a9 -> :sswitch_32
        0x708 -> :sswitch_33
        0x709 -> :sswitch_33
        0x76c -> :sswitch_34
        0x76d -> :sswitch_34
        0x76e -> :sswitch_34
        0x76f -> :sswitch_34
        0x7d0 -> :sswitch_37
        0x7d1 -> :sswitch_37
        0x834 -> :sswitch_38
        0x835 -> :sswitch_38
        0x898 -> :sswitch_3a
        0x899 -> :sswitch_3a
        0x8fc -> :sswitch_25
        0x8fd -> :sswitch_25
        0x8fe -> :sswitch_25
        0x8ff -> :sswitch_25
        0x900 -> :sswitch_25
        0x901 -> :sswitch_25
        0x902 -> :sswitch_25
        0x903 -> :sswitch_25
        0x904 -> :sswitch_25
        0x905 -> :sswitch_25
        0x906 -> :sswitch_25
        0x907 -> :sswitch_25
        0x908 -> :sswitch_25
        0x909 -> :sswitch_25
        0x90a -> :sswitch_25
        0x90b -> :sswitch_25
        0x90c -> :sswitch_25
        0x90d -> :sswitch_25
        0x90e -> :sswitch_25
        0x90f -> :sswitch_25
        0x910 -> :sswitch_25
        0x911 -> :sswitch_25
        0x912 -> :sswitch_25
        0x913 -> :sswitch_25
        0x914 -> :sswitch_25
        0x915 -> :sswitch_25
        0x916 -> :sswitch_25
        0x917 -> :sswitch_25
        0x919 -> :sswitch_25
        0x91a -> :sswitch_25
        0x91b -> :sswitch_25
        0x960 -> :sswitch_26
        0x961 -> :sswitch_26
        0x962 -> :sswitch_26
        0x963 -> :sswitch_26
        0x965 -> :sswitch_26
        0x966 -> :sswitch_26
        0x967 -> :sswitch_26
        0x968 -> :sswitch_26
        0x969 -> :sswitch_26
        0xbba -> :sswitch_0
        0xbbb -> :sswitch_0
        0xbbc -> :sswitch_0
        0xc1c -> :sswitch_3b
        0xc1d -> :sswitch_3b
        0xc1e -> :sswitch_3b
        0xc1f -> :sswitch_3b
        0xc20 -> :sswitch_3b
        0xc21 -> :sswitch_3b
        0xc80 -> :sswitch_3c
        0xc81 -> :sswitch_3c
        0xd48 -> :sswitch_22
        0xd49 -> :sswitch_22
        0xdac -> :sswitch_3c
        0xdad -> :sswitch_3c
        0xf3c -> :sswitch_39
        0xf3d -> :sswitch_39
        0xfa0 -> :sswitch_40
        0xfa1 -> :sswitch_40
        0xfa2 -> :sswitch_40
        0xfa3 -> :sswitch_40
        0xfa4 -> :sswitch_40
        0xfa5 -> :sswitch_40
        0x1194 -> :sswitch_3d
        0x1195 -> :sswitch_3d
        0x11f8 -> :sswitch_3e
        0x11f9 -> :sswitch_3e
        0x125c -> :sswitch_3f
        0x125d -> :sswitch_3f
        0x12c0 -> :sswitch_41
        0x12c1 -> :sswitch_41
        0x1325 -> :sswitch_42
        0x1326 -> :sswitch_42
        0x1327 -> :sswitch_42
        0x1328 -> :sswitch_42
        0x1388 -> :sswitch_43
        0x1389 -> :sswitch_43
        0x138a -> :sswitch_43
        0x1450 -> :sswitch_44
        0x1451 -> :sswitch_44
        0x1452 -> :sswitch_44
        0x1518 -> :sswitch_45
        0x1519 -> :sswitch_45
        0x157c -> :sswitch_46
        0x157d -> :sswitch_46
        0x157e -> :sswitch_46
        0x15e0 -> :sswitch_4a
        0x15e1 -> :sswitch_4a
        0x16a8 -> :sswitch_47
        0x16a9 -> :sswitch_47
        0x170e -> :sswitch_0
        0x170f -> :sswitch_0
        0x1770 -> :sswitch_48
        0x1771 -> :sswitch_48
        0x1772 -> :sswitch_48
        0x1773 -> :sswitch_49
        0x1774 -> :sswitch_49
        0x1775 -> :sswitch_49
        0x1964 -> :sswitch_1f
        0x1965 -> :sswitch_1f
        0x232a -> :sswitch_4b
        0x232b -> :sswitch_4c
        0x232c -> :sswitch_4d
    .end sparse-switch
.end method
