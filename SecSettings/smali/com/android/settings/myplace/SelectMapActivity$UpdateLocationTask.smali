.class Lcom/android/settings_ex/myplace/SelectMapActivity$UpdateLocationTask;
.super Landroid/os/AsyncTask;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/myplace/SelectMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateLocationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/baidu/mapapi/GeoPoint;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/myplace/SelectMapActivity;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$UpdateLocationTask;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 575
    check-cast p1, [Lcom/baidu/mapapi/GeoPoint;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/myplace/SelectMapActivity$UpdateLocationTask;->doInBackground([Lcom/baidu/mapapi/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/baidu/mapapi/GeoPoint;)Ljava/lang/String;
    .locals 2
    .parameter "point"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$UpdateLocationTask;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    #calls: Lcom/android/settings_ex/myplace/SelectMapActivity;->updateLocation(Lcom/baidu/mapapi/GeoPoint;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$1400(Lcom/android/settings_ex/myplace/SelectMapActivity;Lcom/baidu/mapapi/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 575
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/myplace/SelectMapActivity$UpdateLocationTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 583
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$UpdateLocationTask;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$400(Lcom/android/settings_ex/myplace/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 586
    .local v0, length:I
    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$UpdateLocationTask;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$400(Lcom/android/settings_ex/myplace/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v1

    if-lez v0, :cond_1

    .end local v0           #length:I
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 587
    iget-object v1, p0, Lcom/android/settings_ex/myplace/SelectMapActivity$UpdateLocationTask;->this$0:Lcom/android/settings_ex/myplace/SelectMapActivity;

    #setter for: Lcom/android/settings_ex/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/settings_ex/myplace/SelectMapActivity;->access$502(Lcom/android/settings_ex/myplace/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 589
    :cond_0
    return-void

    .line 586
    .restart local v0       #length:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
