.class Lcom/android/settings_ex/DeviceNameSettings$2;
.super Ljava/lang/Object;
.source "DeviceNameSettings.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DeviceNameSettings;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DeviceNameSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DeviceNameSettings;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings_ex/DeviceNameSettings$2;->this$0:Lcom/android/settings_ex/DeviceNameSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 125
    .line 129
    const/4 v0, 0x0

    return v0
.end method
