.class Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)V
    .locals 1

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;

    .line 193
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 194
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;

    #getter for: Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->mClockView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->access$300(Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock$FormatChangeObserver;->this$0:Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverWidget$Clock;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method
