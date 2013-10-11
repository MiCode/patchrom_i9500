.class public Lcom/android/server/toolkit/ToolkitTabDialog;
.super Landroid/app/Dialog;
.source "ToolkitTabDialog.java"


# static fields
.field private static final INTENT_CATEGORY_MULTIWINDOW_TOOLKIT:Ljava/lang/String; = "android.intent.category.MULTIWINDOW_TOOLKIT"


# instance fields
.field private isInnerDismiss:Z

.field private mContext:Landroid/content/Context;

.field private mTabGravity:I

.field private mTabWidget:Lcom/android/server/toolkit/TabWidget;

.field private mToolkitManagerService:Landroid/toolkit/IToolkitService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const v0, 0x1030337

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabGravity:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->isInnerDismiss:Z

    .line 39
    iput-object p1, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/android/server/toolkit/ToolkitTabDialog;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 45
    const v0, 0x1030337

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabGravity:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->isInnerDismiss:Z

    .line 46
    iput-object p1, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/android/server/toolkit/ToolkitTabDialog;->init()V

    .line 48
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 126
    new-instance v1, Lcom/android/server/toolkit/TabWidget;

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/toolkit/TabWidget;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabWidget:Lcom/android/server/toolkit/TabWidget;

    .line 127
    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabWidget:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 128
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 129
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7d8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 130
    return-void
.end method


# virtual methods
.method public addTab(Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)Z
    .locals 3
    .parameter "icon"
    .parameter "intent"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabWidget:Lcom/android/server/toolkit/TabWidget;

    iget-object v1, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabWidget:Lcom/android/server/toolkit/TabWidget;

    iget-object v2, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabWidget:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v2}, Lcom/android/server/toolkit/TabWidget;->getTabCount()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/toolkit/TabWidget;->newTabSpec(ILandroid/graphics/drawable/Drawable;Landroid/content/Intent;)Lcom/android/server/toolkit/TabWidget$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/toolkit/TabWidget;->addTab(Lcom/android/server/toolkit/TabWidget$TabSpec;)V

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 74
    return-void
.end method

.method public setConfig(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "isAZone"

    .prologue
    .line 59
    packed-switch p1, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 61
    :pswitch_0
    if-eqz p2, :cond_0

    const/16 v0, 0x30

    :goto_1
    iput v0, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabGravity:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    goto :goto_1

    .line 65
    :pswitch_1
    if-eqz p2, :cond_1

    const/4 v0, 0x5

    :goto_2
    iput v0, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabGravity:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_2

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPackageList(Ljava/util/ArrayList;)V
    .locals 11
    .parameter "packageList"

    .prologue
    const/4 v10, 0x0

    .line 80
    iget-object v7, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mTabWidget:Lcom/android/server/toolkit/TabWidget;

    invoke-virtual {v7}, Lcom/android/server/toolkit/TabWidget;->clearAllTabs()V

    .line 81
    if-nez p1, :cond_1

    .line 120
    :cond_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 86
    .local v0, N:I
    iget-object v7, p0, Lcom/android/server/toolkit/ToolkitTabDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 87
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 89
    .local v6, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, bFind:Z
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v7, "android.intent.category.MULTIWINDOW_TOOLKIT"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {v4, v3, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 96
    if-eqz v6, :cond_2

    .line 97
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 98
    .local v5, resolveInfoCount:I
    if-eqz v5, :cond_2

    .line 99
    new-instance v9, Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 100
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v7, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0, v7, v3}, Lcom/android/server/toolkit/ToolkitTabDialog;->addTab(Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)Z

    .line 101
    const/4 v1, 0x1

    .line 106
    .end local v5           #resolveInfoCount:I
    :cond_2
    if-nez v1, :cond_3

    .line 107
    const-string v7, "android.intent.category.MULTIWINDOW_TOOLKIT"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 108
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {v4, v3, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 110
    if-eqz v6, :cond_3

    .line 111
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 112
    .restart local v5       #resolveInfoCount:I
    if-eqz v5, :cond_3

    .line 113
    new-instance v9, Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 114
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v7, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0, v7, v3}, Lcom/android/server/toolkit/ToolkitTabDialog;->addTab(Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)Z

    .line 89
    .end local v5           #resolveInfoCount:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method
