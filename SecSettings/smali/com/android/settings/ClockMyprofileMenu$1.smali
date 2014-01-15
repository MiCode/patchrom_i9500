.class Lcom/android/settings_ex/ClockMyprofileMenu$1;
.super Ljava/lang/Object;
.source "ClockMyprofileMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ClockMyprofileMenu;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ClockMyprofileMenu;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ClockMyprofileMenu;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings_ex/ClockMyprofileMenu$1;->this$0:Lcom/android/settings_ex/ClockMyprofileMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/ClockMyprofileMenu$1;->this$0:Lcom/android/settings_ex/ClockMyprofileMenu;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "my_profile_enabled"

    iget-object v2, p0, Lcom/android/settings_ex/ClockMyprofileMenu$1;->this$0:Lcom/android/settings_ex/ClockMyprofileMenu;

    #getter for: Lcom/android/settings_ex/ClockMyprofileMenu;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings_ex/ClockMyprofileMenu;->access$000(Lcom/android/settings_ex/ClockMyprofileMenu;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/ClockMyprofileMenu$1;->this$0:Lcom/android/settings_ex/ClockMyprofileMenu;

    #calls: Lcom/android/settings_ex/ClockMyprofileMenu;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v0}, Lcom/android/settings_ex/ClockMyprofileMenu;->access$100(Lcom/android/settings_ex/ClockMyprofileMenu;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ClockMyprofileMenu$1;->this$0:Lcom/android/settings_ex/ClockMyprofileMenu;

    #getter for: Lcom/android/settings_ex/ClockMyprofileMenu;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v0}, Lcom/android/settings_ex/ClockMyprofileMenu;->access$200(Lcom/android/settings_ex/ClockMyprofileMenu;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/MiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/ClockMyprofileMenu$1;->this$0:Lcom/android/settings_ex/ClockMyprofileMenu;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "my_profile_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ClockMyprofileMenu$1;->this$0:Lcom/android/settings_ex/ClockMyprofileMenu;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 83
    return-void
.end method
