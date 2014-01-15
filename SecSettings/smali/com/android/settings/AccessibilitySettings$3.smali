.class Lcom/android/settings_ex/AccessibilitySettings$3;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
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
    .line 242
    iput-object p1, p0, Lcom/android/settings_ex/AccessibilitySettings$3;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$3;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #calls: Lcom/android/settings_ex/AccessibilitySettings;->updateLockScreenRotationCheckbox()V
    invoke-static {v0}, Lcom/android/settings_ex/AccessibilitySettings;->access$400(Lcom/android/settings_ex/AccessibilitySettings;)V

    .line 246
    return-void
.end method
