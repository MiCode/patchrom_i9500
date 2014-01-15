.class public Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;
.super Landroid/app/Fragment;
.source "HomeSyncAccountManagement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;
    }
.end annotation


# static fields
.field private static final MENU_ID_ADD:I = 0x1

.field private static final MENU_ID_CHANGE:I = 0x3

.field private static final MENU_ID_DELETE:I = 0x2

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "pref_homesync"

.field private static final REQUEST_ISADDED:I = 0x3

.field private static final REQUEST_ISADMIN:I = 0x1

.field private static final REQUEST_ISCHANGED:I = 0x4

.field private static final REQUEST_ISDELETED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Settings"

.field private static final TAGClass:Ljava/lang/String; = " HomeSync Account Management: "

.field private static rootView:Landroid/view/View;


# instance fields
.field private accountManager:Lcom/android/settings_ex/accountmanagement/AccountManager;

.field adminsecurestorage:D

.field list:Landroid/widget/ListView;

.field private mAccountAL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdimAccountid:Ljava/lang/String;

.field private mAdimGroupid:Ljava/lang/String;

.field private mEasysetupAccount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->mEasysetupAccount:Ljava/util/ArrayList;

    .line 253
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;)Lcom/android/settings_ex/accountmanagement/AccountManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings_ex/accountmanagement/AccountManager;

    return-object v0
.end method

.method public static round(DI)D
    .locals 8
    .parameter "value"
    .parameter "places"

    .prologue
    .line 245
    if-gez p2, :cond_0

    .line 246
    const-wide/16 v4, 0x0

    .line 251
    :goto_0
    return-wide v4

    .line 248
    :cond_0
    const-wide/high16 v4, 0x4024

    int-to-double v6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v0, v4

    .line 249
    .local v0, factor:J
    long-to-double v4, v0

    mul-double/2addr p0, v4

    .line 250
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 251
    .local v2, tmp:J
    long-to-double v4, v2

    long-to-double v6, v0

    div-double/2addr v4, v6

    goto :goto_0
.end method

.method private setTempData(Landroid/view/View;)V
    .locals 11
    .parameter "rootView"

    .prologue
    .line 111
    const v7, 0x7f0b0182

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 112
    .local v2, layout:Landroid/view/View;
    const v7, 0x7f0b0105

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 113
    .local v5, tvName:Landroid/widget/TextView;
    const-string v7, "Admin"

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const v7, 0x7f0b0185

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 115
    .local v3, tvEmail:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const v7, 0x7f0b0187

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 117
    .local v4, tvISRegister:Landroid/widget/TextView;
    const-string v7, "Registered"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v7, -0xff0100

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    const v7, 0x7f0b018a

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 120
    .local v6, tvSize:Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->adminsecurestorage:D

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->round(DI)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const v7, 0x7f0b0181

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    .local v0, headerAdmin:Landroid/widget/TextView;
    const-string v7, "Administrator"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const v7, 0x7f0b0183

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 124
    .local v1, headerGuest:Landroid/widget/TextView;
    const-string v7, "Allowed Guest"

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method


# virtual methods
.method public initialisedata()V
    .locals 5

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings_ex/accountmanagement/AccountManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/accountmanagement/AccountManager;->getAdminSamsungId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings_ex/accountmanagement/AccountManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/accountmanagement/AccountManager;->getGuestSamsungAccountId()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    .line 71
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings_ex/accountmanagement/AccountManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/accountmanagement/AccountManager;->getEasySetupAccountId()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->mEasysetupAccount:Ljava/util/ArrayList;

    .line 72
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings_ex/accountmanagement/AccountManager;

    iget-object v2, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/accountmanagement/AccountManager;->getGroupIdBySamsungAccountId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->mAdimGroupid:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings_ex/accountmanagement/AccountManager;

    iget-object v2, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->mAdimGroupid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/accountmanagement/AccountManager;->dBGetTotalSecuredFileInfo(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, filesObject:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->adminsecurestorage:D

    .line 75
    iget-wide v1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->adminsecurestorage:D

    const-wide/high16 v3, 0x4130

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->adminsecurestorage:D

    .line 76
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    const-string v0, "Settings"

    const-string v1, " HomeSync Account Management:   onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 172
    const-string v5, "narshi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestCode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    .line 177
    sget-object v5, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v6, 0x7f0b0182

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0b0188

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 178
    .local v1, deleteButton:Landroid/widget/Button;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 179
    new-instance v5, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$1;-><init>(Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 191
    iget-object v5, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0b0188

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 192
    .local v0, b:Landroid/widget/Button;
    iget-object v5, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0b0185

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, guestid:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0b0105

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, username:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 195
    new-instance v5, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$2;

    invoke-direct {v5, p0, v2, v4}, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$2;-><init>(Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    .end local v0           #b:Landroid/widget/Button;
    .end local v1           #deleteButton:Landroid/widget/Button;
    .end local v2           #guestid:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #username:Ljava/lang/String;
    :cond_0
    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    .line 209
    const-string v5, "is_delete"

    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 210
    const-string v5, "narshi"

    const-string v6, "is_delete success"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v5, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v6, 0x7f0b0182

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0b0188

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 212
    .restart local v1       #deleteButton:Landroid/widget/Button;
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->refreshView()V

    .line 217
    .end local v1           #deleteButton:Landroid/widget/Button;
    :cond_1
    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    const/4 v5, -0x1

    if-ne p2, v5, :cond_2

    .line 218
    const-string v5, "is_add"

    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 219
    const-string v5, "narshi"

    const-string v6, "is_add success"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0}, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->refreshView()V

    .line 225
    :cond_2
    const/4 v5, 0x4

    if-ne p1, v5, :cond_3

    const/4 v5, -0x1

    if-ne p2, v5, :cond_3

    .line 226
    const-string v5, "is_change"

    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 227
    const-string v5, "narshi"

    const-string v6, "is_change_success"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->refreshView()V

    .line 231
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 232
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/accountmanagement/AccountManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/accountmanagement/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->accountManager:Lcom/android/settings_ex/accountmanagement/AccountManager;

    .line 66
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    const v0, 0x7f091241

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 129
    const v0, 0x7f091242

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 130
    const/4 v0, 0x3

    const v1, 0x7f091245

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 131
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 132
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 81
    const v1, 0x7f040092

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->initialisedata()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    const-string v1, "narshi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAdimAccountid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->mAdimAccountid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 90
    sget-object v1, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->setTempData(Landroid/view/View;)V

    .line 104
    :goto_1
    sget-object v1, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v2, 0x7f0b0184

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    .line 105
    new-instance v0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->mEasysetupAccount:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;-><init>(Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 106
    .local v0, adpt:Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    sget-object v1, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    return-object v1

    .line 85
    .end local v0           #adpt:Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;
    :catch_0
    move-exception v7

    .line 86
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    sget-object v1, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v2, 0x7f0b0182

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 93
    .local v10, layout:Landroid/view/View;
    const v1, 0x7f0b0186

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 94
    .local v11, separator:Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    const v1, 0x7f0b0189

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 96
    .local v6, btn:Landroid/widget/ImageView;
    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    sget-object v1, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v2, 0x7f0b0181

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 98
    .local v8, headerAdmin:Landroid/widget/TextView;
    const-string v1, "Administrator"

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    sget-object v1, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    const v2, 0x7f0b0183

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 100
    .local v9, headerGuest:Landroid/widget/TextView;
    const-string v1, "Allowed Guest"

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v1, 0x7f0b0185

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 102
    .local v12, tvEmail:Landroid/widget/TextView;
    const-string v1, "None"

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 165
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 140
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "key_request_for"

    const-string v5, "addrequest"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const/4 v4, 0x3

    invoke-virtual {p0, v0, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 146
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x7

    if-lt v4, v5, :cond_0

    .line 147
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Maximum account for this device has been reached"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 150
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, intent1:Landroid/content/Intent;
    const-string v4, "key_request_for"

    const-string v5, "deleterequest"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v1, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 156
    .end local v1           #intent1:Landroid/content/Intent;
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->mEasysetupAccount:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->mEasysetupAccount:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 157
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "No Easysetup Account please do easysetup once and try again"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 160
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.spc.spcsetting.ACTION_ACCOUNT_MANAGE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, intent2:Landroid/content/Intent;
    const-string v4, "key_request_for"

    const-string v5, "changerequest"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refreshView()V
    .locals 6

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->initialisedata()V

    .line 238
    sget-object v1, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->rootView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->setTempData(Landroid/view/View;)V

    .line 239
    new-instance v0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->mAccountAL:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->mEasysetupAccount:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;-><init>(Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 240
    .local v0, adpt:Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement$MemberAdapter;
    iget-object v1, p0, Lcom/android/settings_ex/accountmanagement/HomeSyncAccountManagement;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 242
    return-void
.end method
