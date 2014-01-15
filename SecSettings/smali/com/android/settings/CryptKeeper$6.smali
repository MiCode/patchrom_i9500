.class Lcom/android/settings_ex/CryptKeeper$6;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/CryptKeeper;->updateEmergencyCallButtonState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    #calls: Lcom/android/settings_ex/CryptKeeper;->takeEmergencyCallAction()V
    invoke-static {v0}, Lcom/android/settings_ex/CryptKeeper;->access$1400(Lcom/android/settings_ex/CryptKeeper;)V

    .line 775
    return-void
.end method
