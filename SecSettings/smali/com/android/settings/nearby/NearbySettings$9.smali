.class Lcom/android/settings_ex/nearby/NearbySettings$9;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nearby/NearbySettings;->requestRestartServerPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nearby/NearbySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nearby/NearbySettings;)V
    .locals 0

    .prologue
    .line 942
    iput-object p1, p0, Lcom/android/settings_ex/nearby/NearbySettings$9;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 944
    const-string v0, "AllshareSetting: "

    const-string v1, "requestRestartServerPopup"

    const-string v2, "CANCEL"

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    return-void
.end method
