.class Lcom/android/settings_ex/AccessibilitySettings$4;
.super Landroid/database/ContentObserver;
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
    .line 347
    iput-object p1, p0, Lcom/android/settings_ex/AccessibilitySettings$4;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$4;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #calls: Lcom/android/settings_ex/AccessibilitySettings;->updateSettingsScreen()V
    invoke-static {v0}, Lcom/android/settings_ex/AccessibilitySettings;->access$500(Lcom/android/settings_ex/AccessibilitySettings;)V

    .line 351
    return-void
.end method
