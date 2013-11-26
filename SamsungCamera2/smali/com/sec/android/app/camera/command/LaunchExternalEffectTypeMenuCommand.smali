.class public Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "LaunchExternalEffectTypeMenuCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mEngine:Lcom/sec/android/app/camera/CommonEngine;

.field private mExternalFilterLoader:Lcom/sec/android/app/camera/ExternalFilterLoader;

.field private final mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private final mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSlideDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 1
    .parameter "activityContext"
    .parameter "glParentView"
    .parameter "menuDepot"
    .parameter "res"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mSlideDirection:I

    .line 47
    iput-object p1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 48
    iput-object p2, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 49
    iput-object p3, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 50
    iput-object p4, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mEngine:Lcom/sec/android/app/camera/CommonEngine;

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mExternalFilterLoader:Lcom/sec/android/app/camera/ExternalFilterLoader;

    .line 53
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 10

    .prologue
    const/16 v2, 0x2329

    const/4 v9, 0x0

    .line 66
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    sget-object v1, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->TAG:Ljava/lang/String;

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v9

    .line 129
    :goto_0
    return v1

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    sget-object v1, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->TAG:Ljava/lang/String;

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v9

    .line 73
    goto :goto_0

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    sget-object v1, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->TAG:Ljava/lang/String;

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v9

    .line 78
    goto :goto_0

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    sget-object v1, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->TAG:Ljava/lang/String;

    const-string v2, "return isRecording.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v9

    .line 83
    goto :goto_0

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isAutoFocusing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    sget-object v1, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->TAG:Ljava/lang/String;

    const-string v2, "return isAutoFocusing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v9

    .line 88
    goto :goto_0

    .line 91
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mEngine:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mZOrder:I

    invoke-static {v1, v3, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v8

    .line 95
    .local v8, menuCommand:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v8, :cond_5

    .line 96
    invoke-virtual {v8}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    .line 98
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mExternalFilterLoader:Lcom/sec/android/app/camera/ExternalFilterLoader;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isFilterLoaded()Z

    move-result v1

    if-nez v1, :cond_6

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mExternalFilterLoader:Lcom/sec/android/app/camera/ExternalFilterLoader;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->loadExternalFilters()Z

    .line 101
    :cond_6
    const/4 v0, 0x0

    .line 102
    .local v0, menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #menu:Lcom/sec/android/app/camera/MenuBase;
    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 103
    .restart local v0       #menu:Lcom/sec/android/app/camera/MenuBase;
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mExternalFilterLoader:Lcom/sec/android/app/camera/ExternalFilterLoader;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isFilterDBChanged()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 104
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->clearGLView()V

    .line 105
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 106
    const/4 v0, 0x0

    .line 107
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_7
    if-nez v0, :cond_8

    .line 111
    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v1, v3}, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 112
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 113
    .restart local v0       #menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_8
    if-nez v0, :cond_9

    .line 117
    sget-object v1, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->TAG:Ljava/lang/String;

    const-string v2, "execute - menu is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v9

    .line 118
    goto/16 :goto_0

    .line 120
    :cond_9
    iget v1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mZOrder:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuBase;->setZorder(I)V

    .line 121
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuBase;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 122
    iget v1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mLaunchX:F

    iget v2, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mLaunchY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuBase;->setLaunchPosition(FF)V

    .line 124
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_a

    .line 125
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 129
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 127
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_1
.end method

.method public setSliderDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 61
    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mSlideDirection:I

    .line 62
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .parameter "zOrder"

    .prologue
    .line 57
    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchExternalEffectTypeMenuCommand;->mZOrder:I

    .line 58
    return-void
.end method
