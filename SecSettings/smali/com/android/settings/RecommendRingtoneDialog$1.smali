.class Lcom/android/settings_ex/RecommendRingtoneDialog$1;
.super Ljava/lang/Object;
.source "RecommendRingtoneDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/RecommendRingtoneDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RecommendRingtoneDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RecommendRingtoneDialog;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings_ex/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings_ex/RecommendRingtoneDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings_ex/RecommendRingtoneDialog;

    #setter for: Lcom/android/settings_ex/RecommendRingtoneDialog;->mSelectedPosition:I
    invoke-static {v0, p2}, Lcom/android/settings_ex/RecommendRingtoneDialog;->access$002(Lcom/android/settings_ex/RecommendRingtoneDialog;I)I

    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings_ex/RecommendRingtoneDialog;

    #getter for: Lcom/android/settings_ex/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/android/settings_ex/RecommendRingtoneDialog$RecommendAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/RecommendRingtoneDialog;->access$100(Lcom/android/settings_ex/RecommendRingtoneDialog;)Lcom/android/settings_ex/RecommendRingtoneDialog$RecommendAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings_ex/RecommendRingtoneDialog;

    #getter for: Lcom/android/settings_ex/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/settings_ex/RecommendRingtoneDialog;->access$200(Lcom/android/settings_ex/RecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings_ex/RecommendRingtoneDialog;

    #getter for: Lcom/android/settings_ex/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/settings_ex/RecommendRingtoneDialog;->access$200(Lcom/android/settings_ex/RecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 71
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings_ex/RecommendRingtoneDialog;

    iget-object v1, p0, Lcom/android/settings_ex/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings_ex/RecommendRingtoneDialog;

    #getter for: Lcom/android/settings_ex/RecommendRingtoneDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/RecommendRingtoneDialog;->access$300(Lcom/android/settings_ex/RecommendRingtoneDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings_ex/RecommendRingtoneDialog;

    #getter for: Lcom/android/settings_ex/RecommendRingtoneDialog;->ringtoneType:I
    invoke-static {v2}, Lcom/android/settings_ex/RecommendRingtoneDialog;->access$400(Lcom/android/settings_ex/RecommendRingtoneDialog;)I

    move-result v2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0, v1}, Lcom/android/settings_ex/RecommendRingtoneDialog;->access$202(Lcom/android/settings_ex/RecommendRingtoneDialog;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings_ex/RecommendRingtoneDialog;

    #getter for: Lcom/android/settings_ex/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/settings_ex/RecommendRingtoneDialog;->access$200(Lcom/android/settings_ex/RecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings_ex/RecommendRingtoneDialog;

    iget-object v1, p0, Lcom/android/settings_ex/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings_ex/RecommendRingtoneDialog;

    #getter for: Lcom/android/settings_ex/RecommendRingtoneDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/RecommendRingtoneDialog;->access$300(Lcom/android/settings_ex/RecommendRingtoneDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings_ex/RecommendRingtoneDialog;

    #getter for: Lcom/android/settings_ex/RecommendRingtoneDialog;->offset:I
    invoke-static {v2}, Lcom/android/settings_ex/RecommendRingtoneDialog;->access$500(Lcom/android/settings_ex/RecommendRingtoneDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings_ex/RecommendRingtoneDialog;

    #getter for: Lcom/android/settings_ex/RecommendRingtoneDialog;->ringtoneType:I
    invoke-static {v3}, Lcom/android/settings_ex/RecommendRingtoneDialog;->access$400(Lcom/android/settings_ex/RecommendRingtoneDialog;)I

    move-result v3

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0, v1}, Lcom/android/settings_ex/RecommendRingtoneDialog;->access$202(Lcom/android/settings_ex/RecommendRingtoneDialog;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings_ex/RecommendRingtoneDialog;

    #getter for: Lcom/android/settings_ex/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/settings_ex/RecommendRingtoneDialog;->access$200(Lcom/android/settings_ex/RecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
