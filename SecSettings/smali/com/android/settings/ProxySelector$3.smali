.class Lcom/android/settings_ex/ProxySelector$3;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ProxySelector;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/settings_ex/ProxySelector$3;->this$0:Lcom/android/settings_ex/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings_ex/ProxySelector$3;->this$0:Lcom/android/settings_ex/ProxySelector;

    invoke-virtual {v0}, Lcom/android/settings_ex/ProxySelector;->populateFields()V

    .line 291
    return-void
.end method
