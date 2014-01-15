.class Lcom/android/settings_ex/myprofile/EllipsisEditText$1;
.super Ljava/lang/Object;
.source "EllipsisEditText.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/myprofile/EllipsisEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/myprofile/EllipsisEditText;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/myprofile/EllipsisEditText;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText$1;->this$0:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ellipsized(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText$1;->this$0:Lcom/android/settings_ex/myprofile/EllipsisEditText;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    #setter for: Lcom/android/settings_ex/myprofile/EllipsisEditText;->mEllipsized:Z
    invoke-static {v1, v0}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->access$002(Lcom/android/settings_ex/myprofile/EllipsisEditText;Z)Z

    .line 61
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
