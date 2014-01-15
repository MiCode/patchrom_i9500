.class Lcom/android/settings_ex/AccessibilitySettings$2;
.super Lcom/android/settings_ex/AccessibilitySettings$SettingsContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/settings_ex/AccessibilitySettings$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    invoke-direct {p0, p2}, Lcom/android/settings_ex/AccessibilitySettings$SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #calls: Lcom/android/settings_ex/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/settings_ex/AccessibilitySettings;->access$100(Lcom/android/settings_ex/AccessibilitySettings;)V

    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #calls: Lcom/android/settings_ex/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/settings_ex/AccessibilitySettings;->access$200(Lcom/android/settings_ex/AccessibilitySettings;)V

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #calls: Lcom/android/settings_ex/AccessibilitySettings;->updateExclusiveTalkback()V
    invoke-static {v0}, Lcom/android/settings_ex/AccessibilitySettings;->access$300(Lcom/android/settings_ex/AccessibilitySettings;)V

    .line 238
    return-void
.end method
