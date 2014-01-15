.class Lcom/android/settings_ex/InformationTicker$1;
.super Ljava/lang/Object;
.source "InformationTicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/InformationTicker;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
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
    .line 339
    iput-object p1, p0, Lcom/android/settings_ex/InformationTicker$1;->this$0:Lcom/android/settings_ex/InformationTicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 342
    const-string v2, "market://details?id=com.facebook.katana"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 343
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 344
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/InformationTicker$1;->this$0:Lcom/android/settings_ex/InformationTicker;

    invoke-virtual {v2, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 345
    return-void
.end method
