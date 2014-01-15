.class Lcom/android/settings_ex/AirplaneModeEnabler$3;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/AirplaneModeEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AirplaneModeEnabler;Z)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/settings_ex/AirplaneModeEnabler$3;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    iput-boolean p2, p0, Lcom/android/settings_ex/AirplaneModeEnabler$3;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler$3;->val$value:Z

    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler$3;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    #getter for: Lcom/android/settings_ex/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$200(Lcom/android/settings_ex/AirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeEnabler$3;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    iget-boolean v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler$3;->val$value:Z

    #calls: Lcom/android/settings_ex/AirplaneModeEnabler;->setAirplaneModeOn(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$300(Lcom/android/settings_ex/AirplaneModeEnabler;Z)V

    .line 197
    :cond_0
    return-void
.end method
