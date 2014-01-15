.class Lcom/android/settings_ex/AccessibilitySettings$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/settings_ex/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/settings_ex/AccessibilitySettings$1;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$1;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #calls: Lcom/android/settings_ex/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/settings_ex/AccessibilitySettings;->access$100(Lcom/android/settings_ex/AccessibilitySettings;)V

    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$1;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #calls: Lcom/android/settings_ex/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/settings_ex/AccessibilitySettings;->access$200(Lcom/android/settings_ex/AccessibilitySettings;)V

    .line 228
    return-void
.end method
