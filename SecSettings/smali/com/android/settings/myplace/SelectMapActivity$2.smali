.class Lcom/android/settings_ex/myplace/SelectMapActivity$2;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/myplace/SelectMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/myplace/SelectMapActivity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$2;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$2;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;
    invoke-static {v0}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$200(Lcom/android/settings_ex/myplace/SelectMapActivity;)Lcom/baidu/mapapi/MyLocationOverlay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$2;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;
    invoke-static {v0}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$200(Lcom/android/settings_ex/myplace/SelectMapActivity;)Lcom/baidu/mapapi/MyLocationOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/MyLocationOverlay;->disableMyLocation()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$2;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #calls: Lcom/android/settings_ex/myplace/SelectMapActivity;->searchLocation()V
    invoke-static {v0}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$100(Lcom/android/settings_ex/myplace/SelectMapActivity;)V

    .line 200
    return-void
.end method
