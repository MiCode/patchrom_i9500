.class Lcom/android/settings_ex/wfd/WfdPickerActivity$16;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WfdPickerActivity;->createAutoConnectDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V
    .locals 0

    .prologue
    .line 2013
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$16;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 2018
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$16;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$4000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    const v4, 0x7f0b03e3

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2019
    .local v1, aniImg:Landroid/widget/ImageView;
    const v3, 0x7f0204f0

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2021
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 2022
    .local v2, frameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 2024
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$16;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    const-string v4, "power"

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v3, v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$4100(Lcom/android/settings_ex/wfd/WfdPickerActivity;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2025
    .local v0, PowerMgr:Landroid/os/PowerManager;
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$16;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    const/16 v4, 0xa

    const-string v5, "WfdPickerActivity"

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3, v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$4202(Lcom/android/settings_ex/wfd/WfdPickerActivity;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 2027
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$16;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$4200(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    const-wide/32 v4, 0x15f90

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2028
    const-string v3, "WfdPickerActivity"

    const-string v4, "WfdPicker WakeLock...this will be released automatically 90 secs after..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    return-void
.end method
