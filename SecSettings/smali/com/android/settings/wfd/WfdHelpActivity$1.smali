.class Lcom/android/settings_ex/wfd/WfdHelpActivity$1;
.super Ljava/lang/Object;
.source "WfdHelpActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wfd/WfdHelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WfdHelpActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WfdHelpActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdHelpActivity;

    #setter for: Lcom/android/settings_ex/wfd/WfdHelpActivity;->mIsReadOnlyChecked:Z
    invoke-static {v0, p2}, Lcom/android/settings_ex/wfd/WfdHelpActivity;->access$002(Lcom/android/settings_ex/wfd/WfdHelpActivity;Z)Z

    .line 86
    return-void
.end method
