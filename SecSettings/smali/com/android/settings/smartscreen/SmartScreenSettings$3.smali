.class Lcom/android/settings_ex/smartscreen/SmartScreenSettings$3;
.super Ljava/lang/Object;
.source "SmartScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$3;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$3;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    #calls: Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->stopAnimation()V
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->access$100(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)V

    .line 368
    return-void
.end method
