.class Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;
.super Landroid/widget/BaseAdapter;
.source "HomeSyncAccountManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MemberAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field isdeletemode:Z

.field private final mAllaccount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mallEasySetupAccount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter
    .parameter
    .parameter "isdeletemode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p3, mAllaccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, mallEasySetupAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->this$0:Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 261
    iput-object p2, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->context:Landroid/content/Context;

    .line 262
    iput-object p3, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->mAllaccount:Ljava/util/ArrayList;

    .line 263
    iput-object p4, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->mallEasySetupAccount:Ljava/util/ArrayList;

    .line 264
    iput-boolean p5, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->isdeletemode:Z

    .line 265
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->mAllaccount:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 272
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->mAllaccount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->mAllaccount:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 284
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 290
    if-nez p2, :cond_0

    .line 291
    iget-object v6, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->context:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 293
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040093

    invoke-virtual {v3, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 294
    new-instance v2, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;-><init>(Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;)V

    .line 295
    .local v2, holder:Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;
    const v6, 0x7f0b0105

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 296
    const v6, 0x7f0b0185

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->email:Landroid/widget/TextView;

    .line 297
    const v6, 0x7f0b0187

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->is_register:Landroid/widget/TextView;

    .line 298
    const v6, 0x7f0b018a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->size:Landroid/widget/TextView;

    .line 299
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 303
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v6, v2, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->name:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Guest "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v7, v2, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->email:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->mAllaccount:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v6, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->mallEasySetupAccount:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->mAllaccount:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 306
    iget-object v6, v2, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->is_register:Landroid/widget/TextView;

    const-string v7, "Registered"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v6, v2, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->is_register:Landroid/widget/TextView;

    const v7, -0xff0100

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    iget-object v6, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->this$0:Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;

    #getter for: Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings_ex/accountmanagement/AccountManager;
    invoke-static {v6}, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->access$000(Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;)Lcom/android/settings_ex/accountmanagement/AccountManager;

    move-result-object v7

    iget-object v6, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->mAllaccount:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/android/settings_ex/accountmanagement/AccountManager;->getGroupIdBySamsungAccountId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, groupid:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;->this$0:Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;

    #getter for: Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings_ex/accountmanagement/AccountManager;
    invoke-static {v6}, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->access$000(Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;)Lcom/android/settings_ex/accountmanagement/AccountManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/settings_ex/accountmanagement/AccountManager;->dBGetTotalSecuredFileInfo(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 310
    .local v0, filesObject:[Ljava/lang/Object;
    aget-object v6, v0, v9

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 311
    .local v4, storage:D
    const-wide/high16 v6, 0x4130

    div-double/2addr v4, v6

    .line 312
    iget-object v6, v2, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->size:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    invoke-static {v4, v5, v8}, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->round(DI)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    .end local v0           #filesObject:[Ljava/lang/Object;
    .end local v1           #groupid:Ljava/lang/String;
    .end local v4           #storage:D
    :goto_1
    return-object p2

    .line 302
    .end local v2           #holder:Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;

    .restart local v2       #holder:Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;
    goto/16 :goto_0

    .line 315
    :cond_1
    iget-object v6, v2, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->is_register:Landroid/widget/TextView;

    const-string v7, "Not registered"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v6, v2, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->size:Landroid/widget/TextView;

    const-string v7, "0.0 MB"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
