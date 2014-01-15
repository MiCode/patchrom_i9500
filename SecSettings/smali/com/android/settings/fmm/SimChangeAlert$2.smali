.class Lcom/android/settings_ex/fmm/SimChangeAlert$2;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fmm/SimChangeAlert;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fmm/SimChangeAlert;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fmm/SimChangeAlert;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/settings_ex/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings_ex/fmm/SimChangeAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TAB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, phonebookIntent:Landroid/content/Intent;
    const-string v1, "additional"

    const-string v2, "phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "existingRecipientCount"

    iget-object v2, p0, Lcom/android/settings_ex/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings_ex/fmm/SimChangeAlert;

    invoke-virtual {v2}, Lcom/android/settings_ex/fmm/SimChangeAlert;->getCountFilledRecipient()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    const-string v1, "maxRecipientCount"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lcom/android/settings_ex/fmm/SimChangeAlert$2;->this$0:Lcom/android/settings_ex/fmm/SimChangeAlert;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 215
    return-void
.end method
