.class Lcom/android/settings_ex/smartscreen/SmartScreenSettings$11;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "SmartScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/smartscreen/SmartScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    #getter for: Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->access$800(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 594
    return-void

    .line 593
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
