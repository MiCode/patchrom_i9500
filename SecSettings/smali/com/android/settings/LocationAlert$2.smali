.class Lcom/android/settings_ex/LocationAlert$2;
.super Ljava/lang/Object;
.source "LocationAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/LocationAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/LocationAlert;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/LocationAlert;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings_ex/LocationAlert$2;->this$0:Lcom/android/settings_ex/LocationAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/LocationAlert$2;->this$0:Lcom/android/settings_ex/LocationAlert;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/LocationAlert$2;->this$0:Lcom/android/settings_ex/LocationAlert;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 88
    return-void
.end method
