.class public Lcom/android/settings_ex/NotificationPanelMenu;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "NotificationPanelMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;
    }
.end annotation


# static fields
.field private static final KEY_BRIGHTNESS_ADJUSTMENT:Ljava/lang/String; = "brightness_adjustment"

.field private static final NOTIFICATION_PANEL_AIRPLANE_MODE:Ljava/lang/String; = "notification_airplane_mode"

.field private static final NOTIFICATION_PANEL_AIR_GESTURE:Ljava/lang/String; = "notification_panel_air_gesture"

.field private static final NOTIFICATION_PANEL_AIR_VIEW:Ljava/lang/String; = "notification_panel_air_view"

.field private static final NOTIFICATION_PANEL_APN:Ljava/lang/String; = "notification_panel_apn"

.field private static final NOTIFICATION_PANEL_BLOCKING_MODE:Ljava/lang/String; = "notification_panel_blocking_mode"

.field private static final NOTIFICATION_PANEL_BLUETOOTH:Ljava/lang/String; = "notification_panel_bluetooth"

.field private static final NOTIFICATION_PANEL_DRIVING:Ljava/lang/String; = "notification_panel_driving"

.field private static final NOTIFICATION_PANEL_EBOOK_MODE:Ljava/lang/String; = "notification_panel_e_reading"

.field private static final NOTIFICATION_PANEL_EMPTY:Ljava/lang/String; = "notification_panel_empty"

.field private static final NOTIFICATION_PANEL_GPS:Ljava/lang/String; = "notification_panel_gps"

.field private static final NOTIFICATION_PANEL_MOBILE_ALLSHARE_CAST:Ljava/lang/String; = "notification_panel_mobile_allshare_cast"

.field private static final NOTIFICATION_PANEL_MOBILE_DATA:Ljava/lang/String; = "notification_panel_mobile_data"

.field private static final NOTIFICATION_PANEL_MULTIWINDOWS:Ljava/lang/String; = "notification_panel_multiwindows"

.field private static final NOTIFICATION_PANEL_NFC:Ljava/lang/String; = "notification_panel_nfc"

.field private static final NOTIFICATION_PANEL_PENONLY_MODE:Ljava/lang/String; = "notification_panel_pen_mode"

.field private static final NOTIFICATION_PANEL_POWERSAVING:Ljava/lang/String; = "notification_panel_powersaving"

.field private static final NOTIFICATION_PANEL_SBEAM:Ljava/lang/String; = "notification_panel_sbeam"

.field private static final NOTIFICATION_PANEL_SCREEN_ROTATION:Ljava/lang/String; = "notification_panel_screen_rotation"

.field private static final NOTIFICATION_PANEL_SMARTPAUSE:Ljava/lang/String; = "notification_panel_smartpause"

.field private static final NOTIFICATION_PANEL_SMARTSCROLL:Ljava/lang/String; = "notification_panel_smartscroll"

.field private static final NOTIFICATION_PANEL_SMARTSTAY:Ljava/lang/String; = "notification_panel_smartstay"

.field private static final NOTIFICATION_PANEL_SOUND:Ljava/lang/String; = "notification_panel_sound"

.field private static final NOTIFICATION_PANEL_SYNC:Ljava/lang/String; = "notification_panel_sync"

.field private static final NOTIFICATION_PANEL_WIFI:Ljava/lang/String; = "notification_panel_wifi"

.field private static final NOTIFICATION_PANEL_WIFIHOTSPOT:Ljava/lang/String; = "notification_panel_wifihotspot"

.field private static final NUM_LAND_ONE_LINE_PANEL:I = 0xa

.field private static final NUM_PORT_ONE_LINE_PANEL:I = 0x5

.field private static final TAG:Ljava/lang/String; = "NotificationPanelMenu"

.field private static final TAG_ACTIVE:Ljava/lang/String; = "active"

.field private static final TAG_CANDIDATE:Ljava/lang/String; = "candidate"


# instance fields
.field private mActiveNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveNotificationPanelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBrightness:Landroid/preference/CheckBoxPreference;

.field private mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

.field private mConvertPanelItemstring:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFooterView:Landroid/view/View;

.field private mCurrentOrientation:I

.field private mFromQuickPanel:Z

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickedView:Landroid/view/View;

.field private mNotificationPanelArea:Landroid/widget/LinearLayout;

.field private mNotificationPanelLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field mPanelBarDragListener:Landroid/view/View$OnDragListener;

.field private mSalesCode:Ljava/lang/String;

.field private mShadowBuilder:Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;

.field mfakePanelDragListener:Landroid/view/View$OnDragListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mCurrentOrientation:I

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mFromQuickPanel:Z

    .line 86
    new-instance v0, Lcom/android/settings_ex/NotificationPanelMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/NotificationPanelMenu$1;-><init>(Lcom/android/settings_ex/NotificationPanelMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

    .line 93
    new-instance v0, Lcom/android/settings_ex/NotificationPanelMenu$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/NotificationPanelMenu$2;-><init>(Lcom/android/settings_ex/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 103
    new-instance v0, Lcom/android/settings_ex/NotificationPanelMenu$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/NotificationPanelMenu$3;-><init>(Lcom/android/settings_ex/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    .line 146
    new-instance v0, Lcom/android/settings_ex/NotificationPanelMenu$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/NotificationPanelMenu$4;-><init>(Lcom/android/settings_ex/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mPanelBarDragListener:Landroid/view/View$OnDragListener;

    .line 514
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/NotificationPanelMenu;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/NotificationPanelMenu;)Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mShadowBuilder:Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/NotificationPanelMenu;Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;)Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mShadowBuilder:Lcom/android/settings_ex/NotificationPanelMenu$PanelDragShadowBuilder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/NotificationPanelMenu;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/NotificationPanelMenu;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/NotificationPanelMenu;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/NotificationPanelMenu;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings_ex/NotificationPanelMenu;->changeQuickSettingsByPanel(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/NotificationPanelMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings_ex/NotificationPanelMenu;->updateQuickSettingsList()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/NotificationPanelMenu;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings_ex/NotificationPanelMenu;->changeQuickSettingsByBar(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/NotificationPanelMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mFromQuickPanel:Z

    return v0
.end method

.method private changeQuickSettingsByBar(Landroid/view/View;)V
    .locals 6
    .parameter "dropView"

    .prologue
    .line 420
    iget-object v3, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 423
    .local v1, longClickedIdx:I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 425
    .local v0, dropIdx:I
    const-string v3, "NotificationPanelMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeQuickSettingsByBar() - longClickedIdx: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / dropIdx : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v3, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 428
    .local v2, removedItem:Ljava/lang/String;
    if-ge v1, v0, :cond_0

    .line 429
    iget-object v3, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 434
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/NotificationPanelMenu;->saveAppslist()V

    .line 435
    return-void

    .line 431
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private changeQuickSettingsByPanel(Landroid/view/View;)V
    .locals 6
    .parameter "dropView"

    .prologue
    .line 439
    iget-object v3, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 442
    .local v1, longClickedIdx:I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 444
    .local v0, dropIdx:I
    const-string v3, "NotificationPanelMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeQuickSettingsByPanel() - longClickedIdx: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / dropIdx : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v3, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v0}, Lcom/android/settings_ex/NotificationPanelMenu;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    iget-object v3, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 448
    .local v2, removedItem:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    .end local v2           #removedItem:Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/NotificationPanelMenu;->saveAppslist()V

    .line 453
    return-void

    .line 450
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v1, v4, v0}, Lcom/android/settings_ex/NotificationPanelMenu;->swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V

    goto :goto_0
.end method

.method private displayQuickSettings(II)V
    .locals 21
    .parameter "oneLinePanelNum"
    .parameter "totalPanelLines"

    .prologue
    .line 287
    const-string v19, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 288
    .local v7, inflater:Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 290
    .local v11, packageName:Ljava/lang/String;
    mul-int v18, p1, p2

    .line 291
    .local v18, totalPanelNum:I
    const/4 v5, 0x0

    .line 292
    .local v5, idx:I
    const/4 v5, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v5, v0, :cond_3

    .line 293
    const v19, 0x7f040108

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 294
    .local v17, panelView:Landroid/view/View;
    const v19, 0x7f0b0312

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 295
    .local v12, panel:Landroid/widget/LinearLayout;
    const v19, 0x7f0b022f

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 296
    .local v14, panelImageView:Landroid/widget/ImageView;
    const v19, 0x7f0b0231

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 298
    .local v16, panelTextView:Landroid/widget/TextView;
    const v19, 0x7f040109

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 299
    .local v10, overlayedPanelView:Landroid/view/View;
    const v19, 0x7f0b0314

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 300
    .local v13, panelBar:Landroid/widget/ImageView;
    const v19, 0x7f0b0315

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 303
    .local v4, fakePanel:Landroid/view/View;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 304
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 305
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lcom/android/settings_ex/NotificationPanelMenu;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 308
    const v19, 0x7f02037e

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 329
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/NotificationPanelMenu;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 332
    div-int v3, v5, p1

    .line 333
    .local v3, containerIdx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/NotificationPanelMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 334
    .local v2, container:Landroid/widget/FrameLayout;
    const v19, 0x7f0b030f

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 335
    .local v9, notificationPanelLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 336
    const v19, 0x7f0b0310

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 337
    .local v8, notificationPanelBarLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 310
    .end local v2           #container:Landroid/widget/FrameLayout;
    .end local v3           #containerIdx:I
    .end local v8           #notificationPanelBarLayout:Landroid/widget/LinearLayout;
    .end local v9           #notificationPanelLayout:Landroid/widget/LinearLayout;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 314
    .local v15, panelText:Ljava/lang/String;
    move-object v6, v15

    .line 315
    .local v6, imgResourceName:Ljava/lang/String;
    const-string v19, "notification_panel_nfc"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 316
    const-string v19, "ATT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/NotificationPanelMenu;->mSalesCode:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 317
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_att"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 323
    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "drawable"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "string"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/NotificationPanelMenu;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/NotificationPanelMenu;->mPanelBarDragListener:Landroid/view/View$OnDragListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto/16 :goto_1

    .line 318
    :cond_2
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 319
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_kor"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 341
    .end local v4           #fakePanel:Landroid/view/View;
    .end local v6           #imgResourceName:Ljava/lang/String;
    .end local v10           #overlayedPanelView:Landroid/view/View;
    .end local v12           #panel:Landroid/widget/LinearLayout;
    .end local v13           #panelBar:Landroid/widget/ImageView;
    .end local v14           #panelImageView:Landroid/widget/ImageView;
    .end local v15           #panelText:Ljava/lang/String;
    .end local v16           #panelTextView:Landroid/widget/TextView;
    .end local v17           #panelView:Landroid/view/View;
    :cond_3
    return-void
.end method

.method private isEmptyPanel(Ljava/util/ArrayList;I)Z
    .locals 2
    .parameter
    .parameter "idx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 457
    .local v0, value:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_0

    .line 458
    const/4 v0, 0x1

    .line 460
    :cond_0
    return v0
.end method

.method private loadAppslist()V
    .locals 7

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_panel_active_app_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, active_app_list:Ljava/lang/String;
    const-string v4, "NotificationPanelMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - active_app_list : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    if-nez v1, :cond_0

    .line 416
    :goto_0
    return-void

    .line 407
    :cond_0
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, activeApps:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 409
    iget-object v4, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 410
    .local v2, convertPanelString:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 411
    iget-object v4, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 415
    .end local v2           #convertPanelString:Ljava/lang/String;
    :cond_2
    const-string v4, "NotificationPanelMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - mActiveNotificationList.size():  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeConvertPanelName()V
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Wifi"

    const-string v2, "notification_panel_wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Location"

    const-string v2, "notification_panel_gps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SilentMode"

    const-string v2, "notification_panel_sound"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AutoRotate"

    const-string v2, "notification_panel_screen_rotation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Bluetooth"

    const-string v2, "notification_panel_bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "MobileData"

    const-string v2, "notification_panel_mobile_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Apn"

    const-string v2, "notification_panel_apn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DormantMode"

    const-string v2, "notification_panel_blocking_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "PowerSaving"

    const-string v2, "notification_panel_powersaving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AllShareCast"

    const-string v2, "notification_panel_mobile_allshare_cast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "MultiWindow"

    const-string v2, "notification_panel_multiwindows"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "WiFiHotspot"

    const-string v2, "notification_panel_wifihotspot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SBeam"

    const-string v2, "notification_panel_sbeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Nfc"

    const-string v2, "notification_panel_nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DrivingMode"

    const-string v2, "notification_panel_driving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SmartStay"

    const-string v2, "notification_panel_smartstay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Sync"

    const-string v2, "notification_panel_sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AirplaneMode"

    const-string v2, "notification_airplane_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Ebook"

    const-string v2, "notification_panel_e_reading"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "PenOnly"

    const-string v2, "notification_panel_pen_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AirView"

    const-string v2, "notification_panel_air_view"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SmartScroll"

    const-string v2, "notification_panel_smartscroll"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SmartPause"

    const-string v2, "notification_panel_smartpause"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AirGesture"

    const-string v2, "notification_panel_air_gesture"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_wifi"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_gps"

    const-string v2, "Location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sound"

    const-string v2, "SilentMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_screen_rotation"

    const-string v2, "AutoRotate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_bluetooth"

    const-string v2, "Bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_mobile_data"

    const-string v2, "MobileData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_apn"

    const-string v2, "Apn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_blocking_mode"

    const-string v2, "DormantMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_powersaving"

    const-string v2, "PowerSaving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_mobile_allshare_cast"

    const-string v2, "AllShareCast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_multiwindows"

    const-string v2, "MultiWindow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_wifihotspot"

    const-string v2, "WiFiHotspot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sbeam"

    const-string v2, "SBeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_nfc"

    const-string v2, "Nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_driving"

    const-string v2, "DrivingMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_smartstay"

    const-string v2, "SmartStay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sync"

    const-string v2, "Sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_airplane_mode"

    const-string v2, "AirplaneMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_e_reading"

    const-string v2, "Ebook"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_pen_mode"

    const-string v2, "PenOnly"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_air_view"

    const-string v2, "AirView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_smartscroll"

    const-string v2, "SmartScroll"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_smartpause"

    const-string v2, "SmartPause"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_air_gesture"

    const-string v2, "AirGesture"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    return-void
.end method

.method private refreshUI()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 486
    iget-object v5, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 487
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v1

    .line 488
    .local v1, isRemoved:Z
    const-string v5, "NotificationPanelMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshUI() - isRemoved: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    .end local v1           #isRemoved:Z
    :cond_0
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 492
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04010a

    invoke-virtual {v0, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 493
    .local v2, quickSettingsView:Landroid/view/View;
    const v5, 0x7f0b0318

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mNotificationPanelArea:Landroid/widget/LinearLayout;

    .line 494
    invoke-direct {p0}, Lcom/android/settings_ex/NotificationPanelMenu;->updateQuickSettingsList()V

    .line 497
    const v5, 0x1020016

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 498
    .local v4, tvTitle:Landroid/widget/TextView;
    const v5, 0x7f0910a8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 501
    const v5, 0x1020010

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 502
    .local v3, tvSummary:Landroid/widget/TextView;
    const v5, 0x7f0910a9

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 510
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v8, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 511
    iput-object v2, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    .line 512
    return-void
.end method

.method private saveAppslist()V
    .locals 7

    .prologue
    .line 470
    const-string v0, ""

    .line 474
    .local v0, activeApps:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 475
    iget-object v4, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 476
    .local v2, convertPanelString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, activeContent:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 479
    .end local v1           #activeContent:Ljava/lang/String;
    .end local v2           #convertPanelString:Ljava/lang/String;
    :cond_0
    const-string v4, "NotificationPanelMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAppslist() -  activeApps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_panel_active_app_list"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 482
    return-void
.end method

.method private swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V
    .locals 2
    .parameter
    .parameter "longClickedIdx"
    .parameter
    .parameter "dropIdx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, longClickedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, dropList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 465
    .local v0, temp:Ljava/lang/String;
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-virtual {p3, p4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 467
    return-void
.end method

.method private updateQuickSettingsList()V
    .locals 8

    .prologue
    .line 258
    iget-object v5, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mNotificationPanelArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 259
    iget-object v5, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 260
    iget-object v5, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 263
    iget v5, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mCurrentOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 264
    const/4 v3, 0x5

    .line 268
    .local v3, oneLinePanelNum:I
    :goto_0
    const-string v5, "NotificationPanelMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateQuickSettingsList() - oneLinePanelNum: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v5, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v5, v3

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int v4, v5, v3

    .line 272
    .local v4, totalPanelLines:I
    :goto_1
    const-string v5, "NotificationPanelMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateQuickSettingsList() - totalPanelLines: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 276
    .local v2, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v4, :cond_2

    .line 277
    const v5, 0x7f040107

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 278
    .local v0, container:Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v5, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mNotificationPanelArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 266
    .end local v0           #container:Landroid/widget/FrameLayout;
    .end local v1           #i:I
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #oneLinePanelNum:I
    .end local v4           #totalPanelLines:I
    :cond_0
    const/16 v3, 0xa

    .restart local v3       #oneLinePanelNum:I
    goto :goto_0

    .line 270
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int/2addr v5, v3

    add-int/lit8 v4, v5, 0x1

    goto :goto_1

    .line 283
    .restart local v1       #i:I
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #totalPanelLines:I
    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/NotificationPanelMenu;->displayQuickSettings(II)V

    .line 284
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mCurrentOrientation:I

    .line 197
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated() - mCurrentOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated() - mFromQuickPanel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mFromQuickPanel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/NotificationPanelMenu$5;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/NotificationPanelMenu$5;-><init>(Lcom/android/settings_ex/NotificationPanelMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 219
    invoke-direct {p0}, Lcom/android/settings_ex/NotificationPanelMenu;->refreshUI()V

    .line 220
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 221
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 249
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() - newConfig.orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / mCurrentOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 251
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mCurrentOrientation:I

    .line 252
    invoke-direct {p0}, Lcom/android/settings_ex/NotificationPanelMenu;->refreshUI()V

    .line 254
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 181
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mSalesCode:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 185
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "direct_quickpanel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mFromQuickPanel:Z

    .line 187
    const v1, 0x7f070054

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 188
    const-string v1, "brightness_adjustment"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    .line 190
    invoke-direct {p0}, Lcom/android/settings_ex/NotificationPanelMenu;->makeConvertPanelName()V

    .line 191
    invoke-direct {p0}, Lcom/android/settings_ex/NotificationPanelMenu;->loadAppslist()V

    .line 192
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 234
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 240
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_panel_brightness_adjustment"

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    .end local v0           #value:Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 240
    .restart local v0       #value:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 225
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 226
    iget-object v2, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_panel_brightness_adjustment"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "notification_panel_brightness_adjustment"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/NotificationPanelMenu;->mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 228
    return-void

    :cond_0
    move v0, v1

    .line 226
    goto :goto_0
.end method
