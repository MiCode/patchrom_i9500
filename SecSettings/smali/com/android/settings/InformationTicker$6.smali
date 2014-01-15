.class Lcom/android/settings_ex/InformationTicker$6;
.super Ljava/lang/Object;
.source "InformationTicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/InformationTicker;->showNotiOfChargesDialog(I)V
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
    .line 721
    iput-object p1, p0, Lcom/android/settings_ex/InformationTicker$6;->this$0:Lcom/android/settings_ex/InformationTicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/settings_ex/InformationTicker$6;->this$0:Lcom/android/settings_ex/InformationTicker;

    #calls: Lcom/android/settings_ex/InformationTicker;->updateFacebookState()V
    invoke-static {v0}, Lcom/android/settings_ex/InformationTicker;->access$400(Lcom/android/settings_ex/InformationTicker;)V

    .line 724
    return-void
.end method
