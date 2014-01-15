.class Lcom/android/settings_ex/TermsAndConditionActivity$2;
.super Ljava/lang/Object;
.source "TermsAndConditionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TermsAndConditionActivity;->showPageOfText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TermsAndConditionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TermsAndConditionActivity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings_ex/TermsAndConditionActivity$2;->this$0:Lcom/android/settings_ex/TermsAndConditionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dlgi"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/TermsAndConditionActivity$2;->this$0:Lcom/android/settings_ex/TermsAndConditionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 98
    return-void
.end method
