.class Lcom/android/settings_ex/AirplaneModeSwitchEnabler$4;
.super Ljava/lang/Object;
.source "AirplaneModeSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AirplaneModeSwitchEnabler;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/settings_ex/AirplaneModeSwitchEnabler$4;->this$0:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/AirplaneModeSwitchEnabler$4;->this$0:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    #getter for: Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->access$300(Lcom/android/settings_ex/AirplaneModeSwitchEnabler;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeSwitchEnabler$4;->this$0:Lcom/android/settings_ex/AirplaneModeSwitchEnabler;

    #getter for: Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->access$100(Lcom/android/settings_ex/AirplaneModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 196
    return-void
.end method
