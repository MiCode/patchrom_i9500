.class public Lcom/android/settings_ex/myplace/MyPlaceListDelelete;
.super Landroid/app/ListFragment;
.source "MyPlaceListDelelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MENU_CANCEL:I = 0x2

.field private static final MENU_DEL:I = 0x1

.field private static final PREFIX_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MyPlaceSettings"

.field private static mItem_cancel:Landroid/view/MenuItem;

.field private static mItem_del:Landroid/view/MenuItem;

.field private static mListItem:[Ljava/lang/String;

.field private static mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private static mlistView:Landroid/widget/ListView;


# instance fields
.field private mButtonSellectAll:Landroid/view/View;

.field private mCustomListDel:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private AddAccessPointToList()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 199
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 200
    const-string v0, "MyPlaceSettings"

    const-string v1, "AddAccessPointToList(), there is no safety zone, return false"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v0, 0x0

    .line 214
    :goto_0
    return v0

    .line 204
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit8 v7, v0, -0x3

    .line 205
    .local v7, count:I
    new-array v0, v7, [Ljava/lang/String;

    sput-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    .line 206
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v7, :cond_2

    .line 207
    add-int/lit8 v0, v8, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    const-string v1, "profile_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 206
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 212
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 214
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private ToggleAllCheck(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 91
    sget-object v2, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 92
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 93
    sget-object v2, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 94
    sget-object v2, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 92
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    .line 97
    return-void
.end method

.method public static checkDeleteButtonstate()V
    .locals 2

    .prologue
    .line 182
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 185
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f0200e0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 190
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f0200e2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public customlistdelete()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 219
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v7

    .line 220
    .local v7, count:I
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v13

    .line 221
    .local v13, selectedCount:I
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customlistdelete(),  count is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", selected item count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-array v8, v13, [I

    .line 225
    .local v8, deleteList:[I
    if-lez v7, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 227
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, i:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 228
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    add-int/lit8 v0, v9, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 231
    .local v10, id:I
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 232
    aput v10, v8, v12

    .line 233
    add-int/lit8 v12, v12, 0x1

    .line 227
    .end local v10           #id:I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 237
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 242
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.settings.MYPLACE_DELETED"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v11, intent:Landroid/content/Intent;
    const-string v0, "deleteList"

    invoke-virtual {v11, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 246
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #i:I
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #j:I
    :cond_2
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    .line 60
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mCustomListDel:Landroid/view/View;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mButtonSellectAll:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mCustomListDel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sput-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->AddAccessPointToList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04012c

    sget-object v4, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 69
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 72
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->setHasOptionsMenu(Z)V

    .line 73
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 86
    sget-object v1, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 87
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->ToggleAllCheck(Z)V

    .line 88
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 178
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v6, 0x7f090143

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 103
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const v0, 0x7f120001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 105
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    .line 106
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f0908b7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 107
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    .line 108
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 122
    :goto_0
    invoke-static {}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    .line 123
    return-void

    .line 111
    :cond_0
    invoke-interface {p1, v2, v4, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200dc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 114
    const v0, 0x7f0908b7

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200e0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 118
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    .line 119
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 46
    const v0, 0x7f04011c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 77
    invoke-static {}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    .line 78
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    sget-object v1, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 79
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 169
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 159
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->customlistdelete()V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 165
    :sswitch_1
    const-string v1, "MyPlaceSettings"

    const-string v2, "MENU_CANCEL is clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 156
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7f0b0543 -> :sswitch_1
        0x7f0b0544 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 52
    invoke-static {}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    .line 53
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f0200e2

    const v5, 0x7f0200e0

    const v4, 0x7f0200dc

    const/4 v3, 0x0

    .line 127
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 131
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {v3}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 133
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 134
    sget-object v1, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 135
    sget-object v1, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 137
    sget-object v1, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 138
    sget-object v1, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    sget-object v1, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 141
    :cond_2
    sget-object v1, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 145
    :cond_3
    sget-object v1, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 146
    sget-object v1, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    sget-object v1, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 149
    :cond_4
    sget-object v1, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method
