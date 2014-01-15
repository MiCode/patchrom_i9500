.class Lcom/android/settings_ex/DreamSettings$1;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DreamSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DreamSettings;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings_ex/DreamSettings$1;->this$0:Lcom/android/settings_ex/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 103
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/DreamSettings$1;->this$0:Lcom/android/settings_ex/DreamSettings;

    #getter for: Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;
    invoke-static {v1}, Lcom/android/settings_ex/DreamSettings;->access$100(Lcom/android/settings_ex/DreamSettings;)Lcom/android/settings_ex/DreamBackend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/DreamBackend;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/DreamSettings$1;->this$0:Lcom/android/settings_ex/DreamSettings;

    #getter for: Lcom/android/settings_ex/DreamSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/DreamSettings;->access$200(Lcom/android/settings_ex/DreamSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0904e9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 106
    const v1, 0x7f090a85

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 107
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/DreamSettings$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/DreamSettings$1$1;-><init>(Lcom/android/settings_ex/DreamSettings$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings_ex/DreamSettings$1$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/DreamSettings$1$2;-><init>(Lcom/android/settings_ex/DreamSettings$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 134
    .end local v0           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/DreamSettings$1;->this$0:Lcom/android/settings_ex/DreamSettings;

    #getter for: Lcom/android/settings_ex/DreamSettings;->mRefreshing:Z
    invoke-static {v1}, Lcom/android/settings_ex/DreamSettings;->access$300(Lcom/android/settings_ex/DreamSettings;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/settings_ex/DreamSettings$1;->this$0:Lcom/android/settings_ex/DreamSettings;

    #getter for: Lcom/android/settings_ex/DreamSettings;->mBackend:Lcom/android/settings_ex/DreamBackend;
    invoke-static {v1}, Lcom/android/settings_ex/DreamSettings;->access$100(Lcom/android/settings_ex/DreamSettings;)Lcom/android/settings_ex/DreamBackend;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/settings_ex/DreamBackend;->setEnabled(Z)V

    .line 132
    iget-object v1, p0, Lcom/android/settings_ex/DreamSettings$1;->this$0:Lcom/android/settings_ex/DreamSettings;

    #calls: Lcom/android/settings_ex/DreamSettings;->refreshFromBackend()V
    invoke-static {v1}, Lcom/android/settings_ex/DreamSettings;->access$400(Lcom/android/settings_ex/DreamSettings;)V

    goto :goto_0
.end method
