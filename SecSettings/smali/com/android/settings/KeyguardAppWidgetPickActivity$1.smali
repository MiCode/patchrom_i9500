.class Lcom/android/settings_ex/KeyguardAppWidgetPickActivity$1;
.super Ljava/lang/Object;
.source "KeyguardAppWidgetPickActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/KeyguardAppWidgetPickActivity;->finishDelayedAndShowLockScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/KeyguardAppWidgetPickActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/KeyguardAppWidgetPickActivity;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/settings_ex/KeyguardAppWidgetPickActivity$1;->this$0:Lcom/android/settings_ex/KeyguardAppWidgetPickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/settings_ex/KeyguardAppWidgetPickActivity$1;->this$0:Lcom/android/settings_ex/KeyguardAppWidgetPickActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 632
    return-void
.end method
