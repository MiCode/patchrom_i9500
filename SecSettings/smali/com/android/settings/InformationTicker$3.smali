.class Lcom/android/settings_ex/InformationTicker$3;
.super Ljava/lang/Object;
.source "InformationTicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/InformationTicker;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/InformationTicker;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/InformationTicker;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/settings_ex/InformationTicker$3;->this$0:Lcom/android/settings_ex/InformationTicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/settings_ex/InformationTicker$3;->this$0:Lcom/android/settings_ex/InformationTicker;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "contents_type"

    iget-object v2, p0, Lcom/android/settings_ex/InformationTicker$3;->this$0:Lcom/android/settings_ex/InformationTicker;

    #getter for: Lcom/android/settings_ex/InformationTicker;->mOldValue:I
    invoke-static {v2}, Lcom/android/settings_ex/InformationTicker;->access$000(Lcom/android/settings_ex/InformationTicker;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 538
    iget-object v0, p0, Lcom/android/settings_ex/InformationTicker$3;->this$0:Lcom/android/settings_ex/InformationTicker;

    iget-object v1, p0, Lcom/android/settings_ex/InformationTicker$3;->this$0:Lcom/android/settings_ex/InformationTicker;

    #getter for: Lcom/android/settings_ex/InformationTicker;->mOldValue:I
    invoke-static {v1}, Lcom/android/settings_ex/InformationTicker;->access$000(Lcom/android/settings_ex/InformationTicker;)I

    move-result v1

    #calls: Lcom/android/settings_ex/InformationTicker;->sendContentsType(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/InformationTicker;->access$100(Lcom/android/settings_ex/InformationTicker;I)V

    .line 539
    iget-object v0, p0, Lcom/android/settings_ex/InformationTicker$3;->this$0:Lcom/android/settings_ex/InformationTicker;

    #calls: Lcom/android/settings_ex/InformationTicker;->updateState()V
    invoke-static {v0}, Lcom/android/settings_ex/InformationTicker;->access$200(Lcom/android/settings_ex/InformationTicker;)V

    .line 540
    return-void
.end method
