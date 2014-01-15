.class Lcom/android/settings_ex/PenHelpPopup$1;
.super Ljava/lang/Object;
.source "PenHelpPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/PenHelpPopup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/PenHelpPopup;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/PenHelpPopup;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings_ex/PenHelpPopup$1;->this$0:Lcom/android/settings_ex/PenHelpPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 62
    const-string v0, "PenHelpPopup"

    const-string v1, "OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/PenHelpPopup$1;->this$0:Lcom/android/settings_ex/PenHelpPopup;

    #calls: Lcom/android/settings_ex/PenHelpPopup;->closePopup()V
    invoke-static {v0}, Lcom/android/settings_ex/PenHelpPopup;->access$000(Lcom/android/settings_ex/PenHelpPopup;)V

    .line 64
    return-void
.end method
