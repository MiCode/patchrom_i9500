.class Lcom/android/settings_ex/users/UserSettings$9;
.super Landroid/os/AsyncTask;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/UserSettings;

.field final synthetic val$resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/UserSettings;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/settings_ex/users/UserSettings$9;->this$0:Lcom/android/settings_ex/users/UserSettings;

    iput-object p2, p0, Lcom/android/settings_ex/users/UserSettings$9;->val$resources:Landroid/content/res/Resources;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 491
    check-cast p1, [Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/users/UserSettings$9;->doInBackground([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 499
    .local p1, values:[Ljava/util/List;,"[Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 500
    .local v3, userId:I
    iget-object v4, p0, Lcom/android/settings_ex/users/UserSettings$9;->this$0:Lcom/android/settings_ex/users/UserSettings;

    #getter for: Lcom/android/settings_ex/users/UserSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/android/settings_ex/users/UserSettings;->access$600(Lcom/android/settings_ex/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 501
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/settings_ex/users/UserSettings$9;->val$resources:Landroid/content/res/Resources;

    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 502
    .local v1, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/settings_ex/users/UserSettings$9;->this$0:Lcom/android/settings_ex/users/UserSettings;

    #getter for: Lcom/android/settings_ex/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/settings_ex/users/UserSettings;->access$300(Lcom/android/settings_ex/users/UserSettings;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 504
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #userId:I
    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 491
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/users/UserSettings$9;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings$9;->this$0:Lcom/android/settings_ex/users/UserSettings;

    #calls: Lcom/android/settings_ex/users/UserSettings;->updateUserList()V
    invoke-static {v0}, Lcom/android/settings_ex/users/UserSettings;->access$000(Lcom/android/settings_ex/users/UserSettings;)V

    .line 495
    return-void
.end method
