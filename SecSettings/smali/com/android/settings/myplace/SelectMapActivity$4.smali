.class Lcom/android/settings_ex/myplace/SelectMapActivity$4;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 232
    iput-object p1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$4;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 244
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "str"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 240
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "str"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$4;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    #calls: Lcom/android/settings_ex/myplace/SelectMapActivity;->setSearchButtonState(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$800(Lcom/android/settings_ex/myplace/SelectMapActivity;I)V

    .line 236
    return-void
.end method
