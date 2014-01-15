.class Lcom/android/settings_ex/InformationTicker$5;
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

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/InformationTicker;I)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/settings_ex/InformationTicker$5;->this$0:Lcom/android/settings_ex/InformationTicker;

    iput p2, p0, Lcom/android/settings_ex/InformationTicker$5;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/settings_ex/InformationTicker$5;->this$0:Lcom/android/settings_ex/InformationTicker;

    iget v1, p0, Lcom/android/settings_ex/InformationTicker$5;->val$value:I

    #calls: Lcom/android/settings_ex/InformationTicker;->saveFBAutoRefreshRate(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/InformationTicker;->access$300(Lcom/android/settings_ex/InformationTicker;I)V

    .line 719
    return-void
.end method
