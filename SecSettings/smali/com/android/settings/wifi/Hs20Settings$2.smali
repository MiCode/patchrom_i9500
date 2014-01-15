.class Lcom/android/settings_ex/wifi/Hs20Settings$2;
.super Ljava/lang/Object;
.source "Hs20Settings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/Hs20Settings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/Hs20Settings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/Hs20Settings;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings_ex/wifi/Hs20Settings$2;->this$0:Lcom/android/settings_ex/wifi/Hs20Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 104
    const-string v0, "Hs20Settings"

    const-string v1, "ActionListener::onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings$2;->this$0:Lcom/android/settings_ex/wifi/Hs20Settings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090325

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "Hs20Settings"

    const-string v1, "ActionListener::onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method
