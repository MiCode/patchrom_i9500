.class public Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
.source "ShortCutWidgetFrame.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;->TAG:Ljava/lang/String;

    .line 37
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/appwidget/AppWidgetManager;)Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;
    .locals 11
    .parameter "context"
    .parameter "appWidgetHost"
    .parameter "appWidgetManager"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 45
    if-nez p0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v6

    .line 48
    :cond_1
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 50
    .local v4, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 51
    .local v5, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/content/ComponentName;

    const v8, 0x10408d0

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x10408d1

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v2, defaultAppWidget:Landroid/content/ComponentName;
    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getShortcutAppWidgetId()I

    move-result v0

    .line 56
    .local v0, appWidgetId:I
    if-nez v0, :cond_2

    .line 57
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 59
    :try_start_0
    invoke-virtual {p2, v0, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->writeShortcutAppWidgetId(I)V

    .line 70
    :cond_2
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 72
    .local v1, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_3

    .line 73
    invoke-virtual {p1, p0, v0, v1}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v7

    .line 75
    .local v7, view:Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {v7, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 76
    new-instance v6, Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;-><init>(Landroid/content/Context;)V

    .line 77
    .local v6, shortCutWidgetFrame:Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 60
    .end local v1           #appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v6           #shortCutWidgetFrame:Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;
    .end local v7           #view:Landroid/appwidget/AppWidgetHostView;
    :catch_0
    move-exception v3

    .line 61
    .local v3, e:Ljava/lang/IllegalArgumentException;
    sget-object v8, Lcom/android/internal/policy/impl/keyguard/sec/ShortCutWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error when trying to bind default AppWidget: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    .line 80
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_3
    invoke-virtual {v4, v10}, Lcom/android/internal/widget/LockPatternUtils;->writeShortcutAppWidgetId(I)V

    goto :goto_0
.end method
