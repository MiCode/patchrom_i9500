.class Lcom/android/settings_ex/myplace/SelectMapActivity$1;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/myplace/SelectMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/myplace/SelectMapActivity;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$1;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$1;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #calls: Lcom/android/settings_ex/myplace/SelectMapActivity;->searchLocation()V
    invoke-static {v0}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$100(Lcom/android/settings_ex/myplace/SelectMapActivity;)V

    .line 180
    const/4 v0, 0x0

    return v0
.end method
