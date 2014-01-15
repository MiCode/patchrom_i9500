.class Lcom/android/settings_ex/myprofile/ClockActivity$7;
.super Ljava/lang/Object;
.source "ClockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/myprofile/ClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/myprofile/ClockActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/myprofile/ClockActivity;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/settings_ex/myprofile/ClockActivity$7;->this$0:Lcom/android/settings_ex/myprofile/ClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 306
    :goto_0
    return-void

    .line 300
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity$7;->this$0:Lcom/android/settings_ex/myprofile/ClockActivity;

    new-instance v1, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;

    invoke-direct {v1}, Lcom/android/settings_ex/myprofile/EditMyProfileDialog;-><init>()V

    #setter for: Lcom/android/settings_ex/myprofile/ClockActivity;->mEditmyProfileDialog:Lcom/android/settings_ex/myprofile/EditMyProfileDialog;
    invoke-static {v0, v1}, Lcom/android/settings_ex/myprofile/ClockActivity;->access$1102(Lcom/android/settings_ex/myprofile/ClockActivity;Lcom/android/settings_ex/myprofile/EditMyProfileDialog;)Lcom/android/settings_ex/myprofile/EditMyProfileDialog;

    .line 301
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/ClockActivity$7;->this$0:Lcom/android/settings_ex/myprofile/ClockActivity;

    #getter for: Lcom/android/settings_ex/myprofile/ClockActivity;->mEditmyProfileDialog:Lcom/android/settings_ex/myprofile/EditMyProfileDialog;
    invoke-static {v0}, Lcom/android/settings_ex/myprofile/ClockActivity;->access$1100(Lcom/android/settings_ex/myprofile/ClockActivity;)Lcom/android/settings_ex/myprofile/EditMyProfileDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/myprofile/ClockActivity$7;->this$0:Lcom/android/settings_ex/myprofile/ClockActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "EDIT_PROFILE_DIALOG"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x7f0b01db
        :pswitch_0
    .end packed-switch
.end method
