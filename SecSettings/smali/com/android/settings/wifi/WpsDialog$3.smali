.class Lcom/android/settings_ex/wifi/WpsDialog$3;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WpsDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WpsDialog;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WpsDialog$3;->this$0:Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog$3;->this$0:Lcom/android/settings_ex/wifi/WpsDialog;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WpsDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog$3;->this$0:Lcom/android/settings_ex/wifi/WpsDialog;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WpsDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog$3;->this$0:Lcom/android/settings_ex/wifi/WpsDialog;

    #getter for: Lcom/android/settings_ex/wifi/WpsDialog;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WpsDialog;->access$300(Lcom/android/settings_ex/wifi/WpsDialog;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog$3;->this$0:Lcom/android/settings_ex/wifi/WpsDialog;

    #getter for: Lcom/android/settings_ex/wifi/WpsDialog;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WpsDialog;->access$300(Lcom/android/settings_ex/wifi/WpsDialog;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog$3;->this$0:Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 183
    return-void
.end method
