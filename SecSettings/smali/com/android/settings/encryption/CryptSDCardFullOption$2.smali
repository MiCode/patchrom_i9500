.class Lcom/android/settings_ex/encryption/CryptSDCardFullOption$2;
.super Ljava/lang/Object;
.source "CryptSDCardFullOption.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/encryption/CryptSDCardFullOption;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/encryption/CryptSDCardFullOption;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/encryption/CryptSDCardFullOption;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings_ex/encryption/CryptSDCardFullOption$2;->this$0:Lcom/android/settings_ex/encryption/CryptSDCardFullOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/encryption/CryptSDCardFullOption$2;->this$0:Lcom/android/settings_ex/encryption/CryptSDCardFullOption;

    #getter for: Lcom/android/settings_ex/encryption/CryptSDCardFullOption;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-static {v0}, Lcom/android/settings_ex/encryption/CryptSDCardFullOption;->access$000(Lcom/android/settings_ex/encryption/CryptSDCardFullOption;)Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/encryption/CryptSDCardFullOption$2;->this$0:Lcom/android/settings_ex/encryption/CryptSDCardFullOption;

    #calls: Lcom/android/settings_ex/encryption/CryptSDCardFullOption;->applyEncryptionUpdates()V
    invoke-static {v0}, Lcom/android/settings_ex/encryption/CryptSDCardFullOption;->access$100(Lcom/android/settings_ex/encryption/CryptSDCardFullOption;)V

    .line 91
    return-void
.end method
