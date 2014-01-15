.class Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMagnifier$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityWidgetProviderMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 230
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 231
    iput-object p2, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMagnifier$SettingsObserver;->mContext:Landroid/content/Context;

    .line 232
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMagnifier$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMagnifier;->updateWidget(Landroid/content/Context;)V

    .line 247
    return-void
.end method

.method startObserving()V
    .locals 3

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMagnifier$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 236
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 238
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMagnifier$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 242
    return-void
.end method
