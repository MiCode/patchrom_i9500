.class Lcom/android/settings_ex/FingerAirViewHelp$1;
.super Ljava/lang/Object;
.source "FingerAirViewHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FingerAirViewHelp;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FingerAirViewHelp;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FingerAirViewHelp;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/settings_ex/FingerAirViewHelp$1;->this$0:Lcom/android/settings_ex/FingerAirViewHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewHelp$1;->this$0:Lcom/android/settings_ex/FingerAirViewHelp;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/FingerAirViewHelp$1;->this$0:Lcom/android/settings_ex/FingerAirViewHelp;

    #getter for: Lcom/android/settings_ex/FingerAirViewHelp;->mDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/FingerAirViewHelp;->access$000(Lcom/android/settings_ex/FingerAirViewHelp;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewHelp$1;->this$0:Lcom/android/settings_ex/FingerAirViewHelp;

    const-string v1, "information_preview_splanner"

    #calls: Lcom/android/settings_ex/FingerAirViewHelp;->showTurnOnDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/FingerAirViewHelp;->access$100(Lcom/android/settings_ex/FingerAirViewHelp;Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewHelp$1;->this$0:Lcom/android/settings_ex/FingerAirViewHelp;

    const-string v1, "information_preview_splanner"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/FingerAirViewHelp;->startTryActually(Ljava/lang/String;)V

    goto :goto_0
.end method
