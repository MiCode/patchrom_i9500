.class Lcom/android/settings_ex/myprofile/MyProfileActivity$4;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/myprofile/MyProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/myprofile/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/myprofile/MyProfileActivity;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity$4;->this$0:Lcom/android/settings_ex/myprofile/MyProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 533
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    :goto_0
    return v2

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/myprofile/MyProfileActivity$4;->this$0:Lcom/android/settings_ex/myprofile/MyProfileActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    #calls: Lcom/android/settings_ex/myprofile/MyProfileActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V
    invoke-static {v0, p1, v1}, Lcom/android/settings_ex/myprofile/MyProfileActivity;->access$700(Lcom/android/settings_ex/myprofile/MyProfileActivity;Landroid/view/View;I)V

    goto :goto_0
.end method
