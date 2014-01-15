.class Lcom/android/settings_ex/myplace/SelectMapActivity$3;
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
    .line 205
    iput-object p1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 209
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gps"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 210
    .local v0, gpsEnabled:Z
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "network"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 212
    .local v2, networkEnabled:Z
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 213
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #calls: Lcom/android/settings_ex/myplace/SelectMapActivity;->showLocationDisabledDialog()V
    invoke-static {v3}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$300(Lcom/android/settings_ex/myplace/SelectMapActivity;)V

    .line 223
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #setter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mResearch:Z
    invoke-static {v3, v5}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$702(Lcom/android/settings_ex/myplace/SelectMapActivity;Z)Z

    .line 225
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 226
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$400(Lcom/android/settings_ex/myplace/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 227
    return-void

    .line 215
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$400(Lcom/android/settings_ex/myplace/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    const-string v4, ""

    #setter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$502(Lcom/android/settings_ex/myplace/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;
    invoke-static {v3}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$200(Lcom/android/settings_ex/myplace/SelectMapActivity;)Lcom/baidu/mapapi/MyLocationOverlay;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 218
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/baidu/mapapi/MyLocationOverlay;
    invoke-static {v3}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$200(Lcom/android/settings_ex/myplace/SelectMapActivity;)Lcom/baidu/mapapi/MyLocationOverlay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mapapi/MyLocationOverlay;->disableMyLocation()V

    .line 220
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #calls: Lcom/android/settings_ex/myplace/SelectMapActivity;->setMyLocationOverlay()V
    invoke-static {v3}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$600(Lcom/android/settings_ex/myplace/SelectMapActivity;)V

    goto :goto_0
.end method
