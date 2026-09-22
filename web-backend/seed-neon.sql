--
-- PostgreSQL database dump
--

\restrict ZkpKc9oPboyU5AP4fe5HeUJgFkxzimPdu2bvgn5dIeRJtfsyv0MS771c0gUQoCi

-- Dumped from database version 16.15
-- Dumped by pg_dump version 16.15

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: stories; Type: TABLE DATA; Schema: public; Owner: audioapp
--

INSERT INTO public.stories (id, title, slug, author_name, description, cover_image_url, status, total_chapters, view_count, generation_model, created_at, updated_at) VALUES ('56f990fa-80f1-4a09-93d4-629e76d67eeb', 'Tuyết Nhai Lăng Vân Chí', 'tuyet-nhai-lang-van-chi', 'AI Sáng Tác', 'Sau khi gia tộc bị thảm sát bởi thế lực bí mật, Tiêu Nhất Sương nhờ duyên kỳ ngộ được một ẩn sĩ truyền thụ Băng Tâm Kiếm Pháp. Mười năm sau, chàng xuống núi truy tìm tung tích kẻ thù, vô tình gặp gỡ Mạc Hàn Nguyệt và khám phá ra âm mưu chiếm đoạt Băng Tâm Ngọc Quyết của Huyết Đao Giáo. Trải qua muôn vàn sinh tử, Tiêu Nhất Sương vạch trần bộ mặt thật của Tạ Thiên Uy, hợp lực cùng các cao thủ chánh phái quyết chiến trên đỉnh Tuyết Sơn để rửa hận gia tộc và khôi phục trật tự giang hồ.', NULL, 'ongoing', 10, 0, 'gemini-3.6-flash', '2026-09-17 11:11:59.904', '2026-09-17 11:11:59.904');


--
-- Data for Name: chapters; Type: TABLE DATA; Schema: public; Owner: audioapp
--

INSERT INTO public.chapters (id, story_id, chapter_number, title, text_content, audio_url, audio_duration_seconds, status, created_at, updated_at) VALUES ('c03e9436-8d7a-4e1c-b861-3e674925c73f', '56f990fa-80f1-4a09-93d4-629e76d67eeb', 9, 'Chương 9', '**CHƯƠNG 9: HUYẾT NHA PHỤC KÍCH, TÂM KIẾM PHÁ BĂNG**

Đêm bão tuyết Lạc Tuyết Trấn trôi qua trong sự tĩnh lặng đè nén. Khi ánh bình minh yếu ớt của vùng núi biên thùy vừa chớm nhô lên sau dãy vách đá lởm chởm, Tiêu Nhất Sương cùng Mạc Hàn Nguyệt đã rời khỏi thị trấn, tiến về hướng hẻm núi Đoạn Hồn – con đường độc đạo dẫn ra khỏi dải núi Tây Bắc để tiến về trung nguyên.

Cơn bão đã ngớt, nhưng cái lạnh cắt da cắt thịt vẫn bám diết lấy từng ngọn cây, cành lá. Tuyết dưới chân phủ dày đến gối, mỗi bước đi đều tạo ra tiếng động "xạo xạc" trầm đục giữa không gian vắng lặng.

Tiêu Nhất Sương đi trước, tay phải không rời khỏi chuôi Sương Hàn Kiếm. Ánh mắt chàng kiên định nhưng phảng phất vẻ lo âu. Những trang nhật ký và mảnh bản đồ thu được ở mật thất Lạc Tuyết Trấn đêm qua như một đá tảng đè nặng lên tâm trí. Kẻ thù diệt tộc của chàng năm xưa không chỉ đơn thuần là Huyết Đao Giáo, mà sau lưng Tạ Thiên Uy dường như còn có sự móc nối của một thế lực thần bí khác trong chánh phái.

"Tiêu huynh, huynh đang bồn chồn." 

Tiếng nói trong trẻo như tiếng chuông đồng của Mạc Hàn Nguyệt vang lên từ phía sau, phá tan sự im lặng. Nàng rảo bước sóng đôi cùng chàng, dải lụa trắng trên vai nhẹ nhàng lay động theo làn gió lạnh.

Tiêu Nhất Sương thở ra một hơi khí trắng xóa, trầm giọng đáp: 
"Mạc姑娘, mười năm qua, ta sống chỉ vì hai chữ ''báo thù''. Nhưng càng tiến gần đến sự thật, ta lại càng thấy giang hồ này hẹp thòi và dơ bẩn hơn ta tưởng. Băng Tâm Ngọc Quyết của gia tộc ta... rốt cuộc chứa đựng bí mật gì mà khiến Tạ Thiên Uy và kẻ thù phải tàn sát không tha một ai?"

Mạc Hàn Nguyệt nhìn sang gương mặt góc cạnh của chàng, nhẹ nhàng đáp:
"Mười năm trước Linh Nguyệt Cung ta cũng từng nghe đồn về Băng Tâm Ngọc Quyết. Người đời đồn rằng nó cất giấu khẩu quyết đỉnh cao của Băng Tâm Kiếm Pháp, có thể đóng băng kinh mạch, phá giải mọi tà công trong thiên hạ. Tạ Thiên Uy luyện Huyết Đao Ma Công đến tầng thứ chín, tà khí đã xâm nhập vào tâm tạng. Hắn muốn Băng Tâm Ngọc Quyết không chỉ để xưng bá, mà còn để đè nén ma tính, giúp hắn突破 ranh giới Thiên Nhân."

Nàng dừng lại một chút, ánh mắt ngưng trọng:
"Tuy nhiên, kiếm pháp do tâm sinh. Tiêu huynh, Băng Tâm Kiếm Pháp lấy sự thanh tĩnh làm gốc. Nếu lòng huynh chứa đầy oán hận, Băng Tâm sẽ biến thành Hạn Băng, tuy sắc bén nhưng rất dễ tự tổn thương mình."

Tiêu Nhất Sương giật mình, nhìn vào mắt nàng. Những lời của Mạc Hàn Nguyệt như một giọt nước mát lành giội vào ngọn lửa giận đang bùng cháy trong lòng chàng. Chàng gật đầu, chắp tay:
"Đa tạ Mạc姑娘 chỉ điểm. Nhất Sương ghi nhớ trong lòng."

Đúng lúc đó, không khí xung quanh đột ngột chùng xuống.

Gió lạnh đang thổi nhẹ bỗng dưng dừng hẳn. Tuyết rơi từ trên các cành thông già không rơi thẳng mà bị một luồng khí áp dị thường hất văng ra xung quanh. 

"Khuých... Khuých..."

Từ trong khu rừng trúc chết khô dọc hai bên hẻm núi Đoạn Hồn, từng đàn quạ đen tung cánh bay lên, tiếng kêu xé rách màn đêm âm u. Mùi máu tươi nồng nặc xen lẫn mùi lưu huỳnh khét lẹt xộc vào mũi.

"Có phục kích!" Mạc Hàn Nguyệt khẽ hô lên, tay vội vàng bấm ấn.

"Hừ, phản ứng nhanh đấy!" 

Một giọng nói ồm ồm, khàn đục như tiếng hai tảng đá nghiền vào nhau vang lên từ đỉnh vách đá phía trên. Nhảy xuống từ không trung là một bóng người cao lớn như gấu rừng, khoác áo bào đỏ rực mạ viền đen. Tay hắn lăm lăm một thanh đại đao hình răng cưa, lưỡi đao tỏa ra ánh huyết quang nghi ngút, nhỏ xuống từng giọt máu đặc quánh làm băng tuyết dưới chân bốc khói đen nghi ngút.

Theo sau hắn, gần ba mươi sát thủ Huyết Đao Giáo mặc giáp đen tràn ra từ các hốc đá, vây chặt lấy hai người thành một vòng tròn chết chóc.

Tiêu Nhất Sương mắt lạnh như băng, nhận ra kẻ cầm đầu:
"Huyết Ma Sứ – Doãn Thiên Sát! Một trong tứ đại hộ pháp của Tạ Thiên Uy."

Doãn Thiên Sát cất tiếng cười điên dại, chĩa thanh Huyết Đao về phía Tiêu Nhất Sương:
"Tiêu Nhất Sương! Tên tàn dư Tiêu gia nhà ngươi trốn chui trốn lủi mười năm, không ngờ lại tự mò về nộp mạng. Giáo chủ đã đoán trước ngươi sẽ đi qua hẻm Đoạn Hồn này. Hôm nay, ta sẽ dùng máu của ngươi để tế thanh Huyết Nguyệt Đao này, hoàn thành tâm nguyện mười năm trước!"

"Mười năm trước..." Đôi mắt Tiêu Nhất Sương sầm xuống, sát khí ngập trời bùng phát khiến mặt tuyết xung quanh rạn nứt. "Đêm đó, ngươi cũng có mặt tại Tiêu Gia Trang?"

"Khặc khặc! Có mặt thì sao? Chính tay ta đã phóng hỏa đốt nhà thờ tổ của ngươi, chính tay ta đã chém đứt đầu ba mươi vị gia nhân Tiêu gia! Lũ người kiêu ngạo các ngươi dưới lưỡi đao của ta gào khóc thật là êm tai!" Doãn Thiên Sát liếm môi, ánh mắt cuồng sát thâm độc.

"Vậy thì... ngươi có thể chết rồi."

Từ ngữ vừa thốt ra khỏi miệng Tiêu Nhất Sương, chuôi Sương Hàn Kiếm lập tức bật khỏi bao. Một tiếng kiếm ngâm trong trẻo như rồng ngâm xé tan không khí hoang vu. Tiêu Nhất Sương hóa thành một luồng tàn ảnh màu trắng, lao thẳng về phía Doãn Thiên Sát.

"Lập trận! Huyết Vụ Sát Mộc!" Doãn Thiên Sát vẫy tay gầm lớn.

Ngay lập tức, ba mươi tên sát thủ Huyết Đao Giáo đồng loạt vung đao tự rạch vào lòng bàn tay. Máu tươi phun ra, hòa quyện với tà khí tạo thành một lớp sương mù màu máu dày đặc, cuồn cuộn bao phủ lấy cả lòng hẻm núi. Trong màn sương đỏ, thị giác và thính giác của người bên trong bị phong tỏa hoàn toàn, tà khí gặm nhấm kinh mạch khiến vận chuyển nội lực trở nên khó khăn.

"Tiêu huynh, cẩn thận! Đây là Huyết Tế Luyện Hồn Trận của tà giáo!" Mạc Hàn Nguyệt lên tiếng cảnh báo.

Nàng đứng ở trung tâm, ngón tay ngọc ngời sáng vung ra ba mươi sáu viên Dạ Minh Châu. Những viên ngọc lơ lửng giữa không trung, tỏa ra ánh sáng xanh lục dịu mát, kết thành một trận hình tròn – "Cửu Thiên Nguyệt Quang Trận". Ánh sáng trăng soi rọi đến đâu, màn sương máu lập tức tan biến đến đó, tạo ra một vùng không gian trong lành cho Tiêu Nhất Sương tự do thi triển.

"Mạc姑娘, phòng thủ cẩn thận!" 

Tiêu Nhất Sương gầm nhẹ một tiếng, Băng Tâm Kiếm Pháp bùng nổ. 

*Băng Tâm Kiếm Pháp – Thức thứ ba: Băng Hạc Triều Dương!*

Thân hình chàng vút lên không trung, Sương Hàn Kiếm hóa thành hàng trăm tia kiếm quang màu bạc, tựa như đàn hạc tuyết lao xuống từ chín tầng trời. Những tên sát thủ Huyết Đao Giáo chưa kịp định hình đã bị kiếm khí xuyên thủng lồng ngực. Băng tuyết bám chặt lấy vết thương, đóng băng máu tươi trước khi nó kịp chảy ra. 

Chỉ trong ba nhịp thở, mười tên sát thủ đã gục xuống, chết không nhắm mắt.

"Lũ vô dụng!" 

Doãn Thiên Sát giận dữ gầm lên. Hắn dậm mạnh chân xuống đất, vách đá hai bên hẻm núi rung chuyển bẻ gãy hàng loạt cây trúc khô. Thanh Huyết Nguyệt Đao trên tay hắn hóa thành một quồng sáng đỏ thẫm cuồng bạo, xé rách không khí lao thẳng vào Tiêu Nhất Sương.

*Huyết Đao Cuồng Tà – Huyết Hầu Trảm!*

Đao khí chưa tới nhưng mùi hôi thối và áp lực đè nén đã ép tới trước mặt. Tiêu Nhất Sương không hề nao núng, ánh mắt chàng tĩnh lặng như hồ nước mùa thu, hoàn toàn nhập vào cảnh giới "Tâm Tĩnh Như Băng".

Chàng xoay người nhẹ nhàng như một chiếc lá giữa bão tuyết, lưỡi kiếm lướt qua thân đao gõ nhẹ ba tiếng "keng, keng, keng". Mỗi tiếng gõ đều đánh đúng vào điểm yếu nhất trên đường đao của Doãn Thiên Sát, khiến lực đao cuồng bạo bị lệch hướng, chém đôi một tảng đá lớn bên cạnh.

"Cái gì?!" Doãn Thiên Sát chấn động. Hắn không ngờ một gã thiếu niên hai mươi tuổi lại có thể đỡ được chiêu đao dùng tám phần công lực của mình một cách dễ dàng đến thế.

"Đao pháp của ngươi cuồng thô nhưng thiếu vắng linh hồn, chỉ là thứ tà thuật mượn lực máu oán hận." Tiêu Nhất Sương cất giọng lạnh lẽo, lưỡi kiếm trong tay rực sáng một luồng băng lam quang mang thuần khiết. "Hôm nay, ta dùng Băng Tâm Kiếm Pháp rửa sạch tội ác của ngươi!"

*Băng Tâm Kiếm Pháp – Thức thứ sáu: Lăng Tuyết Đoạn Hồn!*

Khí lạnh trong bán kính trăm thước đột ngột ngưng tụ lại trên mũi kiếm Sương Hàn. Tiêu Nhất Sương đâm ra một kiếm thanh thoát, không hề có tiếng gió gào hú, không hề có chiêu thức cầu kỳ. Đó chỉ là một nét đâm thẳng giản đơn, nhưng lại chứa đựng toàn bộ kiếm ý thanh cao và hận thù mười năm đè nén.

Doãn Thiên Sát hoảng hốt, giơ thanh Huyết Nguyệt Đao ngang ngực đỡ lấy.

"XOẢNG!"

Tiếng kim loại gãy vụn giòn tan vang lên. Thanh Huyết Nguyệt Đao rèn bằng thép tinh luyện hỏa ma bị kiếm khí băng giá đâm xuyên qua thủng một lỗ lớn, rồi rạn nứt thành vô số mảnh nhỏ văng tung bốc.

Mũi kiếm Sương Hàn không dừng lại, đâm xuyên qua vai trái của Doãn Thiên Sát, cắm sâu vào vách đá phía sau lưng hắn, đính chặt gã hộ pháp khổng lồ lên vách đá lạnh giá.

"A hự!" Doãn Thiên Sát hộc ra một ngụm máu đen. Vết thương trên vai hắn lập tức bị một lớp băng tuyết bao phủ, cái lạnh thấu xương lan truyền theo kinh mạch, phong tỏa toàn bộ nội lực của hắn.

Những tên sát thủ còn lại thấy thủ lĩnh bị đánh bại trong chớp mắt thì kinh hoàng mất mật, quăng đao tháo chạy tán loạn vào rừng trúc. Mạc Hàn Nguyệt cũng không buồn đuổi theo, nàng thu hồi Dạ Minh Châu, nhẹ nhàng tiến lại gần Tiêu Nhất Sương.

Tiêu Nhất Sương bước tới trước mặt Doãn Thiên Sát, tay siết chặt chuôi kiếm, ánh mắt đằng đằng sát khí:
"Nói! Tạ Thiên Uy đang ở đâu? Hắn tính toán điều gì trên đỉnh Tuyết Sơn?"

Doãn Thiên Sát run rẩy vì lạnh và đau đớn, nhưng khóe miệng hắn vẫn nhoẻn ra một nụ cười tàn nhẫn, đầy máu:
"Khặc... khặc... Tiêu Nhất Sương... Ngươi... ngươi đánh thắng ta thì sao chứ? Giáo chủ đã thu thập đủ tám mươi mốt giọt máu của các cao thủ chánh phái... Huyết Đàn trên đỉnh Tuyết Sơn đã kích hoạt rồi!"

Tiêu Nhất Sương nheo mắt, dí sát mũi kiếm vào cổ hắn: "Huyết Đàn? Hắn định làm gì?"

"Hắn... hắn dùng nửa mảnh Băng Tâm Ngọc Quyết của gia tộc ngươi... hòa cùng Huyết Linh Chân Khí để mở ra Mật Cảnh Tuyết Sơn..." Doãn Thiên Sát thở dốc, mắt trợn ngược. "Lũ ngu ngốc các ngươi... Võ Lâm Đồng Minh đang kéo lên Tuyết Sơn để vây quét Huyết Đao Giáo... nhưng bọn chúng không biết... bọn chúng chính là tế phẩm cuối cùng mà Giáo chủ đang chờ đợi!"

"Cái gì?!" Mạc Hàn Nguyệt biến sắc. Nàng bước lên một bước: "Tạ Thiên Uy muốn lợi dụng cuộc chiến giữa chánh tà để hút lấy máu của toàn bộ cao thủ võ lâm?"

Doãn Thiên Sát cười điên dại: "Đúng vậy! Băng Tâm Ngọc Quyết... chính là chìa khóa mở ra kho báu võ học của Băng Sơn Thượng Cổ! Khi Giáo chủ luyện thành... cả giang hồ này... sẽ phải quỳ dưới chân Huyết Đao Giáo! Ngươi... ngươi tới không kịp đâu... Ha ha ha..."

"Phập!"

Tiêu Nhất Sương rút kiếm ra, xoay người vung một đường kiếm sắc lẹm. Đầu Doãn Thiên Sát gục xuống, hơi thở dứt hẳn.

Không khí hẻm núi trở lại vẻ tĩnh mịch ban đầu. Mùi máu tươi bị cái lạnh nhanh chóng xua tan, nhưng bầu không khí giữa Tiêu Nhất Sương và Mạc Hàn Nguyệt lại trở nên nặng nề hơn bao giờ hết.

Mạc Hàn Nguyệt nhìn Tiêu Nhất Sương, sắc mặt nghiêm trọng:
"Tiêu huynh, nếu lời hắn nói là thật, thì Chánh phái võ lâm đang lao vào một cái bẫy chết người do Tạ Thiên Uy giăng sẵn. Linh Nguyệt Cung chưởng môn và các đại phái trung nguyên chắc chắn đã bắt đầu tiến núi."

Tiêu Nhất Sương tra Sương Hàn Kiếm vào bao. Ánh mắt chàng nhìn về phía xa, nơi những đỉnh núi Tuyết Sơn ngút ngàn chìm trong mây mờ che phủ. Nơi đó, trận chiến định mệnh đang chờ đợi chàng.

"Mười năm trước, gia tộc ta bị tàn sát vì lòng tham của hắn. Mười năm sau, ta không thể để cả giang hồ lại rơi vào cảnh lầm than." Tiêu Nhất Sương siết chặt nắm đấm, giọng nói vang lên đĩnh đạc và kiên định. "Mạc姑娘, chúng ta phải lên đỉnh Tuyết Sơn ngay lập tức. Trước khi thảm kịch xảy ra!"

Mạc Hàn Nguyệt gật đầu, ánh mắt tràn đầy sự tin tưởng: "Được! Ta sẽ đồng hành cùng huynh đến cùng."

Hai bóng người một trắng một xanh nhanh chóng thi triển thân pháp, biến mất vào sâu trong con đường đèo phủ đầy tuyết trắng, hướng thẳng về phía đỉnh Tuyết Sơn – nơi phong ba bão táp lớn nhất của giang hồ sắp sửa bùng nổ.', NULL, NULL, 'pending', '2026-09-17 11:11:59.904', '2026-09-22 13:58:57.792');
INSERT INTO public.chapters (id, story_id, chapter_number, title, text_content, audio_url, audio_duration_seconds, status, created_at, updated_at) VALUES ('83a7d699-b727-436f-879b-d13954428894', '56f990fa-80f1-4a09-93d4-629e76d67eeb', 4, 'Chương 4', '**CHƯƠNG 4: MẬT ĐỒ HÌNH THẤT, KIẾM KHÍ TRỪ TÀ**

Tiếng lá trúc xơ xác ngừng rơi khi tàn cục trận phục kích khép lại. Dưới ánh trăng mờ nhạt chao đảo qua kẽ lá, năm ba gã sát thủ mặc giáp đen của Huyết Đao Giáo nằm la liệt trên mặt đất đẫm máu. Mùi máu tươi nồng nặc quyện vào làn không khí lạnh giá của đêm miền núi, tạo nên một bầu không khí u uất, ngột ngạt đến nghẹt thở.

Tiêu Nhất Sương từ từ tra thanh Băng Tâm Kiếm vào bao. Tiếng "cạnh" nhẹ nhàng vang lên nhưng đầy uy lực. Sắc mặt chàng trắng bệch, khóe môi khẽ giật giật. Dù kiếm pháp đã đại thành, nhưng mỗi khi nhìn thấy hình xăm đầu lâu vắt ngang lưỡi đao đỏ quạch trên ngực áo kẻ thù, ngọn lửa thù hận mười năm qua lại bùng lên thiêu đốt tâm trí chàng. 

"Lồng ngực bị ép bộc phát nội lực quá đà, bão tuyết trong kinh mạch đang hỗn loạn đúng không?"

Một giọng nói trong trẻo, êm dịu như tiếng suối chảy đêm đông vang lên bên cạnh. Mạc Hàn Nguyệt nhẹ nhàng tiến lại gần. Nàng không nhìn những tử thi xung quanh mà đưa đôi mắt ngọc trầm tĩnh quan sát Tiêu Nhất Sương. 

Chưa đợi chàng lên tiếng, Mạc Hàn Nguyệt đã nhanh như chớp giơ ngón tay thon dài gõ nhẹ vào ba huyệt đạo Kiên Trinh, Khúc Trì và Thần Môn trên tay phải của chàng. Ngay lập tức, một luồng nhiệt khí ấm áp, thuần khiết từ ngón tay nàng truyền qua, xoa dịu luồng băng khí đang cuộn trào hỗn loạn trong lồng ngực Tiêu Nhất Sương.

"Cảm ơn Mạc姑娘." Tiêu Nhất Sương hít một hơi thật sâu, sắc mặt dần trở lại bình thường. Chàng ngước mắt nhìn nàng, trong lòng không khỏi kinh ngạc trước y thuật xuất quỷ nhập thần của vị trưởng lão trẻ tuổi Linh Nguyệt Cung này.

"Kiếm pháp Băng Tâm của huynh chí hàn, chí thuần, yêu cầu tâm cảnh phải tịnh như mặt hồ không sóng." Mạc Hàn Nguyệt rút từ trong ống tay áo ra một chiếc lọ ngọc màu bích ngọc, lấy ra một viên đan dược tỏa hương thơm dịu nhẹ đưa cho chàng: "Huống chi, thù sâu như biển dễ làm tâm trí chệch hướng. Nếu huynh để sát khí lấn át kiếm ý, chưa kịp giết Tạ Thiên Uy thì chính chân khí của huynh đã xé rách kinh mạch rồi."

Tiêu Nhất Sương nhận lấy viên thuốc, nuốt xuống. Luồng dược lực dịu mát nhanh chóng lan tỏa, làm dịu đi cái nóng hừng hực nơi tâm trí. Chàng nhìn xuống gã sát thủ còn thoi hóp dưới đất, ánh mắt ngưng lại:

"Năm đó, gia tộc ta bị thảm sát trong một đêm mưa tuyết. Kẻ cầm đầu mặc áo bào đỏ, dùng Huyết Đao Phù trấn áp toàn bộ hộ vệ. Ta đã thề, dù có phải xuống hoàng tuyền cũng phải băm vằn Tạ Thiên Uy."

Mạc Hàn Nguyệt không ngắt lời chàng. Nàng tiến lại gần tử thi của tên thủ lĩnh nhóm phục kích, dùng mũi dao nhỏ lật tấm bài kỳ dị bằng đồng đen đeo trước ngực hắn lên. Mặt bài khắc hình một viên ngọc tuyết bị lưỡi đao rướm máu quấn chặt.

"Quả nhiên là vì Băng Tâm Ngọc Quyết," Mạc Hàn Nguyệt khẽ chau mày, ánh mắt trở nên ngưng trọng. "Huyết Đao Giáo mười năm qua ẩn mìn rèn luyện tà công ''Huyết Luyện Thần Ma'', nhưng tà công này có nhược điểm chí mạng là tẩu hỏa nhập ma khi luyện đến tầng cuối. Tạ Thiên Uy muốn chiếm đoạt Băng Tâm Ngọc Quyết – bảo vật trấn sơn của gia tộc huynh – để đè nén hỏa độc trong người hắn."

"Băng Tâm Ngọc Quyết..." Tiêu Nhất Sương nắm chặt chuôi kiếm, khớp xương trắng bệch. "Năm đó phụ thân ta thà chết chứ không giao ra, giấu nó vào nơi không ai ngờ tới. Không ngờ Tạ Thiên Uy vẫn chưa từ bỏ ý định."

"Hắn không chỉ không từ bỏ, mà đã bắt đầu hành động rồi." Mạc Hàn Nguyệt đứng dậy, chỉ tay về phía bìa rừng trúc. "Những kẻ này chỉ là quân cờ dò đường. Đêm nay, chúng ta khó lòng tìm được một nơi nghỉ ngơi yên ổn."

Vừa dứt lời, một luồng âm phong lạnh sống lưng cuồn cuộn thổi qua rừng trúc. Những thân trúc xanh biếc xào xạc rung lên dồn dập, tạo thành những tiếng động gào hú như tiếng quỷ khóc ma than.

Từ trong màn đêm u tối, một tràng cười ngông cuồng, ầm ĩ như tiếng sấm nát vang lên, chấn động đến mức làm tuyết đọng trên các cành trúc rụng xuống tả tơi.

"Khá lắm cho một nữ tử Linh Nguyệt Cung! Lại có thể nhìn thấu tâm tư của Giáo chủ ta!"

Một bóng đen khổng lồ từ trên không trung đáp xuống, nện mạnh chân xuống mặt đất làm đất đá văng tung tóe. Đó là một gã đại hán cao hơn sáu thước, mình trần để lộ những bắp thịt cuồn cuộn khắc đầy ma văn màu đỏ thẫm. Tay hắn lăm lăm một thanh đại đao hình răng cưa, lưỡi đao bốc lên làn khói màu đỏ sẫm tanh nồng.

"Huyết Nha – Trịnh Ngạc!" Mạc Hàn Nguyệt thốt lên, đôi lông mày liễu nhíu chặt. Nàng lập tức lùi lại nửa bước, tay úp vào túi gấm bên hông.

Trịnh Ngạc là một trong Bốn Đại Hộ Pháp của Huyết Đao Giáo, khét tiếng tàn bạo với bộ đao pháp "Huyết Nha Sát Tiên". Sự xuất hiện của hắn chứng tỏ Tạ Thiên Uy đã thực sự để mắt đến sự trở lại của Tiêu Nhất Sương.

Trịnh Ngạc liếc nhìn Tiêu Nhất Sương bằng đôi mắt đỏ ngầu đầy sát khí: "Tàn dư của Tiêu gia! Mười năm trước để ngươi trốn thoát, không ngờ hôm nay lại tự mò về nộp mạng. Giao Băng Tâm Ngọc Quyết ra, ta sẽ cho ngươi chết một cách toàn thây!"

"Muốn lấy Ngọc Quyết? Hãy bước qua xác ta trước!" 

Tiêu Nhất Sương gầm lên một tiếng, Băng Tâm Kiếm tuột khỏi bao, hóa thành một vệt sáng màu lam nhạt xé tan màn đêm. Hàn khí cuồn cuộn tuôn ra từ mũi kiếm, biến những giọt sương đêm rơi ngưng đọng thành hàng ngàn mũi băng tiễn lao vút về phía Trịnh Ngạc.

"Trò hề của con nít!" Trịnh Ngạc gầm lên, đại đao trong tay quét ngang một vòng. 

"Huyết Đao Vẫn Thiên!"

Một luồng đao mang màu máu đặc quánh bùng nổ, đập tan hàng ngàn mũi băng tiễn. Lực chấn động kinh hoàng hất văng Tiêu Nhất Sương lùi lại mấy bước. Chân chàng bám chặt xuống đất, rạch thành hai đường rãnh sâu trên tuyết.

Trịnh Ngạc không để chàng kịp hít thở, thân hình to lớn lao đến như một ngọn núi sụp đổ, lưỡi đại đao bổ xuống đỉnh đầu Tiêu Nhất Sương với uy lực nghìn cân. Đao chưa đến nhưng đao khí tàn bạo đã làm da mặt Tiêu Nhất Sương rát nát.

"Nhất Sương, đứng yên!" 

Giữa lúc ngàn cân treo sợi tóc, tiếng hô trong trẻo của Mạc Hàn Nguyệt vang lên. Nàng vung tay vung ra bốn viên ngọc thạch màu xanh biếc xuống bốn góc xung quanh Trịnh Ngạc. 

"Nguyệt Hoa Tỏa Băng Trận – Khởi!"

Mạc Hàn Nguyệt bấm pháp ấn, bốn viên ngọc thạch tức thì bùng phát ánh sáng bạc dịu mát, nối liền với nhau tạo thành một trận pháp hình tứ giác bao bọc lấy Trịnh Ngạc. Ánh sáng trăng soi rọi xuống, biến không khí bên trong trận pháp trở nên nặng nề như thủy ngân. Luồng huyết khí dữ dội trên thanh đại đao của Trịnh Ngạc lập tức bị vầng sáng màu bạc ép chặt, ngọn lửa ma màu đỏ lịm dần.

"Trận pháp xảo quyệt của Linh Nguyệt Cung?!" Trịnh Ngạc giận dữ gầm lên, bước chân hắn trở nên nặng nề như đeo đá ngàn cân, nhịp đao vung ra chậm đi thấy rõ.

"Bây giờ là lúc!" Mạc Hàn Nguyệt hô lớn, trán nàng rịn ra một tầng mồ hôi mỏng vì phải dốc toàn lực duy trì trận pháp.

Tiêu Nhất Sương hiểu ý ngay lập tức. Chàng nhắm mắt lại trong một phần mười giây. Tất cả những oán thù, đau thương, sự hỗn loạn trong tâm trí đều bị thu lại vào sâu trong đáy lòng, biến thành một mặt hồ băng phẳng lặng không một gợn sóng.

Băng Tâm Kiếm Pháp – Thức thứ tư: **Tuyết Hoa Băng TÂM!**

Khi Tiêu Nhất Sương mở mắt, đôi đồng tử của chàng đã chuyển sang màu xám bạc tuyệt đẹp nhưng lạnh lẽo vô cùng. Chàng bước ra một bước, thân hình như hóa thành một bóng ma tuyết, biến mất khỏi tầm mắt của Trịnh Ngạc.

Nhiệt độ xung quanh giảm xuống độ âm tột cùng. Những bông tuyết nhỏ li ti bắt đầu đọng lại trên lưỡi đao của Trịnh Ngạc.

"Ở đâu?!" Trịnh Ngạc hốt hoảng xoay người, vung đao loạn đả.

"Phập!"

Một tiếng động cực nhỏ vang lên. Không có tiếng gầm rú của đao khí, không có tiếng va chạm rầm rộ. Tiêu Nhất Sương đã đứng sau lưng Trịnh Ngạc từ lúc nào, Băng Tâm Kiếm tra lại vào bao.

Trịnh Ngạc đứng sững lại tại chỗ, đôi mắt trợn ngược đầy vẻ không tin nổi. Một đường chỉ đỏ cực mảnh xuất hiện giữa cổ hắn, sau đó nhanh chóng bị một lớp băng mỏng bao phủ. 

"Kiếm... kiếm pháp thật nhanh..." 

Trịnh Ngạc ú ớ thốt lên vài tiếng tột cùng bàng hoàng, thanh đại đao trong tay nát vụn thành mười mấy mảnh nhỏ do bị hàn khí xâm nhập. Thân hình to lớn của gã Hộ Pháp Huyết Đao Giáo ngã gục xuống đất, đóng thành một khối băng cứng đờ.

Mạc Hàn Nguyệt thu lại pháp ấn, bốn viên ngọc thạch thu hồi về tay. Nàng khẽ thở dài một hơi, nhìn Tiêu Nhất Sương với ánh mắt kiêu hãnh xen lẫn lo lắng: "Thế nào? Tuyệt kỹ của gia tộc huynh combined với trận pháp của ta, không tệ chứ?"

Tiêu Nhất Sương quay lại, trong mắt chàng sự lạnh giá dần tan biến, thay vào đó là một chút ấm áp chân thành: "Nếu không có trận pháp của Mạc姑娘 khống chế đao khí của hắn, ta khó lòng dốc toàn lực cho chiêu vừa rồi."

Chàng tiến lại gần cái xác băng giá của Trịnh Ngạc, dùng mũi kiếm gạt lớp giáp ngực ra. Trong ngực áo hắn rớt ra một tấm da dê cũ kỹ bị xé mất một nửa.

Tiêu Nhất Sương nhặt tấm da dê lên, dưới ánh trăng, chàng nhận ra đó là một bản đồ miêu tả địa hình miền Tuyết Sơn – nơi đặt sào huyệt chính của gia tộc chàng năm xưa, và cũng là nơi Tạ Thiên Uy đang bế quan.

"Tạ Thiên Uy..." Tiêu Nhất Sương siết chặt bản đồ trong tay. "Hắn đã tiến vào cấm địa Tuyết Sơn."

Mạc Hàn Nguyệt bước tới bên cạnh chàng, ngước nhìn vầng trăng khuyết đang treo lơ lửng trên đỉnh núi xa xa: "Chuyến đi Tuyết Sơn này nguy hiểm trùng trùng. Tạ Thiên Uy tàn nhẫn vô tình, lại có tà công hỗ trợ. Nhưng huynh không còn phải đi một mình nữa."

Tiêu Nhất Sương nhìn sang người nữ tử bên cạnh. Ánh trăng chiếu lên khuôn mặt thanh tú nhưng kiên định của nàng, tạo nên một vẻ đẹp vừa thoát tục vừa ấm áp. Chàng khẽ gật đầu, ngọn lửa báo thù trong lòng dường như đã bớt đi phần tàn bạo, thay vào đó là một ý chí kiên cường và tỉnh táo hơn bao giờ hết.

"Được. Chúng ta lên đường!"

Hai bóng người, một trắng một xanh, cùng bước đi trong đêm tối, hướng về phía ngọn Tuyết Sơn trùng điệp – nơi cơn bão giang hồ lớn nhất sắp sửa bùng nổ.', NULL, NULL, 'processing_tts', '2026-09-17 11:11:59.904', '2026-09-22 13:59:26.192');
INSERT INTO public.chapters (id, story_id, chapter_number, title, text_content, audio_url, audio_duration_seconds, status, created_at, updated_at) VALUES ('d63a4ca5-6685-4431-8c22-b592ae60e129', '56f990fa-80f1-4a09-93d4-629e76d67eeb', 7, 'Chương 7', '**CHƯƠNG 7: TÀN HỎA HUYẾT ĐÀN, TRUY PHONG TUYẾT KIẾM**

Màn sương độc màu xám tro của U Cốc dần lùi lại phía sau lưng, nhường chỗ cho không khí lạnh giá của đêm muộn trên dãy núi phía Đông. Dưới ánh trăng khuyết treo lơ lửng giữa tầng mây mờ đục, hai bóng người lướt đi nhẹ nhàng như những hồn ma giữa rừng thông già hoang vắng.

Tiêu Nhất Sương dừng bước trên một mỏm đá nhô ra vực sâu. Gió núi thổi tung vạt áo xám của chàng, làm lộ ra chuôi thanh cổ kiếm đang tỏa ra làn hàn khí mỏng manh. Bên cạnh chàng, Mạc Hàn Nguyệt khẽ vuốt lại dải lụa xanh trên mái tóc, đôi mắt phượng đong đầy sự lo ngại nhìn về hướng thung lũng sâu thẳm phía trước.

"Sương độc của U Cốc đã được giải, nhưng huyết khí tích tụ ở phía trước lại càng lúc càng nồng đậm," Mạc Hàn Nguyệt nói, giọng nói trong trẻo như tiếng suối reo nhưng chứa đựng sự cảnh giác cao độ. Cây quạt ngân bạch trên tay nàng khẽ xòe ra, những viên ngọc đính trên sống quạt phản chiếu ánh trăng lấp lánh. "Nhất Sương, huynh có cảm thấy không? Đây không phải là huyết khí tự nhiên của thú rừng, mà là máu người."

Tiêu Nhất Sương siết chặt nắm tay, đốt ngón tay trắng bệch. Ánh mắt chàng như hai lưỡi băng Băng Tâm Kiếm, lạnh lẽo và đầy sát khí. Chàng khẽ gật đầu:

"Mười năm trước, đêm gia tộc ta bị diệt môn, không khí cũng nồng nặc thứ mùi hôi thối này. Tạ Thiên Uy và Huyết Đao Giáo của hắn đi đến đâu, sinh linh nơi đó đều tan nát."

Chàng quay sang nhìn Mạc Hàn Nguyệt, giọng trầm xuống:

"Lúc ở trong U Cốc, từ tấm mật đồ thu được của tên sát thủ, muội đã nhận ra điều gì phải không?"

Mạc Hàn Nguyệt thở dài, ánh mắt ngưng trệ trên khoảng không xám xịt:

"Tà công ''Huyết Ma Đao Pháp'' của Tạ Thiên Uy vốn là môn võ học cực kỳ tàn bạo. Càng luyện đến tầng cao, huyết khí trong cơ thể càng cuồng bạo, như ngọn lửa địa ngục thiêu rụi kinh mạch của người luyện. Hắn truy tìm Băng Tâm Ngọc Quyết của Tiêu gia huynh không chỉ vì muốn xưng bá võ lâm, mà là để dùng chí âm chí hàn của Băng Tâm Kiếm Pháp đè nén hỏa độc tà ma trong người hắn."

"Nói cách khác," Tiêu Nhất Sương lạnh lùng ngắt lời, "Nếu không có Băng Tâm Ngọc Quyết, hắn sẽ bị tẩu hỏa nhập ma mà chết?"

"Đúng vậy," Mạc Hàn Nguyệt gật đầu. "Và theo những gì ghi trên tấm bản đồ, bọn chúng chưa lấy trọn vẹn được Ngọc Quyết năm xưa. Tạ Thiên Uy đang dùng một phương pháp tà giáo khác để duy trì mạng sống: Huyết Tế."

Cả hai nhìn nhau, không cần nói thêm một lời nào nữa. Mối thù gia tộc kết hợp với đại nghĩa giang hồ như hai luồng sức mạnh cuộn trào trong lòng Tiêu Nhất Sương. Chàng nhún người, bóng dáng nhanh như một tia chớp lao vút xuống lòng thung lũng, Mạc Hàn Nguyệt theo sát ngay sau lưng.

***

Càng đi sâu vào lòng thung lũng Tần Cốc, không khí càng trở nên đặc quánh và hôi hám. Giữa lòng thung lũng hoang vu, một phế tích ngôi cổ tự hiện ra dưới ánh trăng mờ. Tuy nhiên, ngôi chùa cổ này không hề có vẻ thanh tịnh của chốn thiền môn, mà phủ một màu đỏ quạch kinh hoàng. 

Xung quanh khuôn viên chùa, hàng trăm cây đuốc làm bằng mỡ người bùng cháy lên những ngọn lửa màu xanh lục quái dị. Ở chính giữa sân chùa là một hồ nước nhân tạo, nhưng nước trong hồ lại mang màu đỏ thẫm của máu tươi, bọt khí nổi lên ùng ục cùng với tiếng thì thầm cúng bái ghê rợn.

Trán Mạc Hàn Nguyệt biến sắc khi nhìn thấy cảnh tượng đó:

"Thất Tinh Huyết Tế Trận! Bọn chúng đang dùng máu của mươi mấy người dân lành và đệ tử chánh phái bị bắt bớ để nuôi dưỡng Huyết Đao!"

Trên một đài đá cao dựng ngay bên hồ máu, một gã đàn ông trung niên mặc gấm vóc màu đỏ máu, khuôn mặt hốc hác nhưng cặp mắt đỏ ngầu gồ lên đầy tà khí. Hắn ta tay cầm một thanh đại đao hình lưỡi liềm, trên lưỡi đao có chạm khắc chín cái đầu lâu bằng đồng đang bốc ra những luồng khói đen. Hắn chính là ''Tàn Huyết Sứ Giả'' Lục Huyết - một trong bốn vị Hộ pháp tâm phúc của Tạ Thiên Uy.

"Ha ha ha! Dùng máu tươi của lũ chánh phái đạo đức giả này để tôi luyện Huyết Linh Đao, khi Giáo chủ xuất quan, thiên hạ này còn ai cản nổi Huyết Đao Giáo ta?" Lục Huyết cất tiếng cười điên dại, vang vọng khắp thung lũng hoang vắng.

Bên dưới đài đá, hàng chục gã giáo đồ Huyết Đao Giáo đang quỳ rạp, miệng tụng chú ngữ quái dị. Những người dân thường bị trói ngoặt tay sau lưng, khuôn mặt tái dại vì sợ hãi, tiếng khóc than vô vọng bị vùi lấp bởi tiếng gió hú qua kẽ đá.

"Súc sinh!"

Một tiếng quát như sấm truyền vang lên giữa không trung. Ngay sau đó, một luồng kiếm khí màu trắng bạc, mang theo hơi lạnh thấu xương xé tan màn đêm, giội thẳng xuống đài đá nơi Lục Huyết đang đứng.

"Rắc! Rắc!"

Mặt đất nơi kiếm khí đi qua tức thì đóng thành một lớp băng dày. Mấy gã giáo đồ quỳ gần đó chưa kịp hiểu chuyện gì xảy ra đã bị luồng kiếm khí hàn băng đóng giăng thành những pho tượng đá, rồi vỡ vụn thành từng mảnh nhỏ.

Lục Huyết giật mình, phản ứng cực nhanh. Hắn vung thanh Huyết Linh Đao lên đỡ lấy luồng kiếm khí. 

"Oành!"

Sức mạnh từ cú va chạm hất văng Lục Huyết lùi lại năm bước, đôi chân hắn bấm sâu vào nền đá cứng. Hắn ngẩng đầu lên, ánh mắt đỏ ngầu nhìn chằm chằm vào thiếu niên mặc áo xám vừa hạ xuống giữa sân chùa.

"Kẻ nào dại chuột vuốt râu hùm?" Lục Huyết gầm lên, nhưng khi nhìn rõ thanh cổ kiếm tỏa ra băng tuyết trên tay Tiêu Nhất Sương, khuôn mặt hắn bỗng giật giật. "Băng Tâm Kiếm Pháp? Thanh kiếm này... Ngươi là nghiệt tử còn sót lại của Tiêu gia mười năm trước?"

Tiêu Nhất Sương từ từ bước tiến lên. Mỗi bước chân của chàng, tuyết dưới đất lại tự động ngưng tụ thành những mảng băng sắc nhọn. Tấm lưng chàng thẳng tắp như ngọn núi tuyết bất khuất, đôi mắt ngập tràn sát ý nhìn xoáy vào kẻ thù.

"Lục Huyết. Mười năm trước, chính ngươi đã dẫn quân đốt cháy Đông Sương Môn của Tiêu gia ta. Máu của ba mươi người ở Đông Sương Môn vẫn chưa khô, hôm nay ta đến để đòi lại từng giọt một!"

Lục Huyết ngơ ngác một chút rồi cất tiếng cười khoái trá, giọng cười chói tai như kim loại nghiến vào nhau:

"Ha ha ha! Rắn mất đầu mà đòi trả thù sao? Thiên đường có lối ngươi không đi, địa ngục không môn ngươi tự lao vào! Giáo chủ vẫn luôn tiếc nuối vì mười năm trước không nhổ cỏ tận gốc, hôm nay ngươi tự mang Băng Tâm Kiếm Pháp đến đây, đúng là trời giúp Huyết Đao Giáo ta!"

"Chưa biết ai giúp ai đâu!"

Từ trên không trung, Mạc Hàn Nguyệt đáp xuống nhẹ nhàng như một chiếc lá mùa thu. Tay nàng múa lên, tám mươi tư cây ngân kim từ trong tay áo phóng ra như mưa rào, cắm thẳng vào tám mươi tư vị trí xung quanh trận pháp Huyết Tế.

"Ầm!"

Hồ máu đột nhiên bốc lên từng luồng khói đen tột cùng, những bọt khí ngừng nổ, các luồng tà khí đang hội tụ về thanh Huyết Linh Đao lập tức bị đứt đoạn. Mạc Hàn Nguyệt đã dùng độc kỹ và trận pháp của Linh Nguyệt Cung phong tỏa hoàn toàn ''Thất Tinh Huyết Tế Trận''.

"Trận pháp bị phá rồi!" Lũ giáo đồ xung quanh hốt hoảng kêu lên.

"Lũ ngu ngốc! Mau giết cằn cái con ả kia cho ta!" Lục Huyết gầm lên dữ dội, sát khí bùng bùng.

Hàng chục tên sát thủ Huyết Đao Giáo vung đao xông về phía Mạc Hàn Nguyệt. Nhưng nàng chỉ mỉm cười nhẹ nhàng, thân hình uyển chuyển như mây bay, quạt bạc xòe ra thu lại, mỗi nhát quạt phóng ra vô số luồng linh khí biến thành những dải lụa sắc lẹm, đẩy lùi từng toán kẻ thù.

"Đối thủ của ngươi là ta!"

Tiêu Nhất Sương không để Lục Huyết có cơ hội can thiệp. Thanh Băng Tâm Cổ Kiếm gầm lên một tiếng ngân vang tựa như tiếng rồng ngâm giữa bão tuyết. Chàng biến thành một luồng bóng trắng, kiếm chiêu "Tuyết Nhai Sương Diệp" bùng nổ.

Muôn ngàn hoa tuyết bằng kiếm khí ngưng tụ giữa không trung, lao về phía Lục Huyết như cơn bão tuyết cuồng nộ.

"Huyết Đao Trảm Thiên!" Lục Huyết gầm lớn, hai tay nắm chặt cán đại đao, vung lên một đường đao đỏ rực như biển máu, cố gắng xé rách bão tuyết.

"Đùng! Đùng! Đùng!"

Tiếng kim loại va chạm giòn giã liên hồi vang vọng khắp thung lũng. Hàn khí chí âm và Huyết hỏa chí tà va đập vào nhau tạo ra những luồng sóng xung kích dữ dội, làm rung chuyển cả những mảng tường đá mục nát của ngôi cổ tự.

Lục Huyết càng đánh càng kinh hãi. Hắn vốn là một cao thủ lừng lẫy giang hồ, tà công đã đạt tới tầng thứ bảy, vậy mà đao pháp của hắn khi chạm vào kiếm khí của Tiêu Nhất Sương lại như bị một tảng băng ngàn năm hấp thụ hết công lực. Lớp băng mỏng dần dần lan từ lưỡi đao sang cổ tay hắn, làm các khớp xương của hắn tê dại, tốc độ ra đao càng lúc càng chậm.

"Không thể nào! Ngươi mới mươi mấy tuổi đầu, sao Băng Tâm Kiếm Pháp lại có thể đạt tới tầng ''Băng Phong Vạn Lý'' này được?" Lục Huyết hổn hển, đôi mắt đỏ ngầu giờ đây đã hiện lên sự sợ hãi.

"Năm đó các ngươi tàn sát Tiêu gia, có bao giờ nghĩ đến ngày hôm nay không?"

Tiêu Nhất Sương cất giọng lạnh như băng tuyết ngàn năm. Chàng nhắm mắt lại trong một khoảnh khắc ngắn ngủi. Trong tâm trí chàng, hình ảnh cha mẹ gục ngã trong biển lửa, tiếng kêu khóc của gia nhân mười năm trước hiện lên rõ mồng mộng. Mọi ân oán, mọi đau thương nén chặt trong lòng mười năm qua giờ đây ngưng tụ lại thành một điểm duy nhất trên mũi kiếm.

"Băng Tâm Thức Thứ Sáu: TUYẾT LẠC THÁI BÌNH!"

Tiêu Nhất Sương mở mắt ra. Thanh cổ kiếm trong tay chàng không còn tỏa ra kiếm khí rầm rộ nữa, mà trở nên trong suốt như tinh thể băng tinh khiết nhất. Chàng đâm ra một kiếm nhẹ nhàng, không tiếng động, không chút gợn sóng.

Chiêu kiếm này trông có vẻ chậm rãi, nhưng lại như khóa chặt toàn bộ không gian xung quanh Lục Huyết.

Lục Huyết hoảng hốt, hắn muốn lùi lại nhưng hai chân đã bị hàn khí dưới đất đóng chặt từ lúc nào. Hắn tuyệt vọng vung đại đao lên chặn trước ngực, đem toàn bộ huyết công tích tụ cả đời ra phòng thủ.

"Xoẹt!"

Một tiếng động cực nhỏ vang lên, giống như tiếng lưỡi dao sắc bén rạch qua tờ giấy mỏng.

Mũi Băng Tâm Kiếm đâm xuyên qua lưỡi đại đao bằng thép tinh luyện của Lục Huyết như đâm qua đậu hũ, sau đó xuyên thẳng qua ngực trái của hắn.

Thời gian như ngưng đọng lại. 

Ngọn lửa xanh từ các cây đuốc xung quanh chao đảo rồi tắt ngụm. Cả khu đền cổ chìm vào sự im lặng tờ mờ dưới ánh trăng.

Lục Huyết cúi đầu nhìn lưỡi kiếm băng cắm sâu vào ngực mình. Máu từ vết thương phun ra không còn màu đỏ nữa mà đã bị hàn khí đóng thành những tinh thể băng màu tím thẫm. 

"Khặc... khặc..." Lục Huyết hộc ra một ngụm máu đông, mắt trợn ngược nhìn Tiêu Nhất Sương. "Ngươi... ngươi thắng trận này... nhưng... nhưng đã quá muộn rồi..."

Tiêu Nhất Sương xoay nhẹ mũi kiếm, giọng nói không chút biến đổi:

"Tạ Thiên Uy ở đâu?"

Lục Huyết cười lên sặc sụa, giọng nói đứt quãng nhưng đầy vẻ hiểm độc:

"Giáo chủ... Giáo chủ đã đến Tuyết Sơn... Hắn đã hội tụ đủ... ba mảnh Băng Tâm Ngọc Quyết... Chiếc cối xay máu này... chỉ là... để thu hút chú ý của các ngươi... Khi hắn mở được động phủ trên đỉnh Tuyết Nhai... các ngươi... tất cả chánh phái... đều phải chết..."

Nói xong câu cuối cùng, thân thể Lục Huyết bị hàn khí từ bên trong bùng phát, biến thành một pho tượng băng xám xịt rồi đổ rụi thành muôn ngàn mảnh vụn trên đài đá.

Xung quanh, lũ giáo đồ Huyết Đao Giáo thấy Hộ pháp đã chết thì kinh hãi tột cùng, vứt bỏ đao kiếm tháo chạy thục mạng vào đêm tối. Mạc Hàn Nguyệt không đuổi theo, nàng mau chóng giải thoát cho những người dân lành bị bắt giữ, phân phát dược thảo để giải hỏa độc cho họ rồi bước đến bên cạnh Tiêu Nhất Sương.

Tiêu Nhất Sương vẫn đứng đó, lưỡi kiếm dính những vết băng màu tím đang từ từ tan ra. Lời nói cuối cùng của Lục Huyết như ngọn roi quật mạnh vào tâm trí chàng.

"Ba mảnh Ngọc Quyết... hắn đã gom đủ rồi sao?" Tiêu Nhất Sương thì thầm, bàn tay siết chặt chuôi kiếm đến mức run lên. "Làm sao hắn có thể lấy được nửa mảnh còn lại của Linh Nguyệt Cung và nửa mảnh của Tiêu gia?"

Mạc Hàn Nguyệt tiến lại gần, vẻ mặt vô cùng nghiêm trọng. Nàng lấy từ trong ngực ra một chiếc hộp ngọc nhỏ, mở ra, bên trong hoàn toàn trống rỗng.

"Không phải hắn lấy được từ Linh Nguyệt Cung," Mạc Hàn Nguyệt ngẩng đầu lên, ánh mắt đầy chấn động. "Mảnh Ngọc Quyết mà Cung chủ giao cho ta mang theo... đã bị tráo đổi từ trước khi chúng ta rời khỏi Linh Nguyệt Cung! Trong nội bộ chánh phái... có nội gian của Tạ Thiên Uy!"

Một cơn gió lạnh ngắt từ đỉnh Tuyết Sơn thổi qua thung lũng, mang theo tiếng gầm hú ghê rợn của bão tuyết sắp tới. Tiêu Nhất Sương ngước nhìn về hướng đỉnh núi xa xăm, nơi mây đen và tuyết trắng đang cuộn xoáy như một con tà ma khổng lồ đang há miệng nuốt trọn giang hồ.

"Dù hắn có gom đủ Ngọc Quyết, dù có nội gian hay tà công," Tiêu Nhất Sương tra kiếm vào vỏ, tiếng "chạch" vang lên dòn giã và dứt khoát, "Trên đỉnh Tuyết Nhai đó, ta và hắn nhất định phải có một người nằm lại."

Hai bóng người lại một lần nữa hòa vào màn đêm phong tuyết, hướng thẳng về phía đỉnh Tuyết Sơn - nơi trận quyết chiến cuối cùng đang chờ đón.', 'https://aczlbeorxmewcaqoetzr.supabase.co/storage/v1/object/public/Audio/56f990fa-80f1-4a09-93d4-629e76d67eeb_7.mp3', 649, 'ready', '2026-09-17 11:11:59.904', '2026-09-22 13:54:53.288');
INSERT INTO public.chapters (id, story_id, chapter_number, title, text_content, audio_url, audio_duration_seconds, status, created_at, updated_at) VALUES ('b6cdd137-b798-48f2-bbae-45abb2721f71', '56f990fa-80f1-4a09-93d4-629e76d67eeb', 8, 'Chương 8', '**CHƯƠNG 8: TRẦN PHONG MẬT THẤT, HÀM CỪU TUYẾT DẠ**

Rời khỏi tàn tích đẫm máu của Huyết Đàn, con đường mòn phủ đầy tuyết trắng dẫn Tiêu Nhất Sương và Mạc Hàn Nguyệt tiến sâu về phía Lạc Tuyết Trấn – một thị trấn hẻo lánh nằm ở vùng ranh giới giữa dãy Tây Bắc hoang vu và con đường dẫn về trung nguyên. 

Đêm đã về khuya. Gió tuyết rít lên từng hồi qua những vách đá nham nhở, cuốn theo những bông tuyết sắc lẹm cắt vào da thịt. Thảm án tàn sát ở Huyết Đàn vừa qua không làm cho lòng Tiêu Nhất Sương nhẹ nhõm hơn, ngược lại, những manh mối dở dang cùng dã tâm bạo ngược của Huyết Đao Giáo càng khiến ngọn lửa căm hờn trong lòng chàng bùng cháy dữ dội. Mỗi bước chân của chàng trên tuyết lạnh đều mang theo sát khí trầm mặc, kiên định như núi đá ngàn năm.

Lạc Tuyết Trấn chìm trong không gian tịch mịch hãi hùng. Những dãy nhà gỗ ọp ẹp đóng chặt cửa, phố xá không một bóng người qua lại. Chỉ có ánh đèn dầu hiu hắt, chao đảo từ một căn khách quán nằm ở cuối phố – nơi mang tấm biển gỗ mục nát ghi ba chữ: "Tuyết Phong Điếm".

Dừng chân trước cửa khách quán, Mạc Hàn Nguyệt khẽ cau mày. Đôi mắt trong sáng như nước hồ thu của nàng ngước nhìn lên mái hiên phủ tuyết dày, rồi lướt qua những ô cửa sổ dán giấy mỏng đã mục ố. Nàng khẽ đưa tay lên chặn ngang ngực Tiêu Nhất Sương, hạ thấp giọng:

"Tiêu huynh, hãy cẩn thận. Khách quán này bề ngoài tàn phá như bỏ hoang, nhưng xung quanh lại được ẩn giấu một tòa ''Cửu Âm Trầm Mộc Trận''. Đây là trận pháp bí truyền của tà đạo, chuyên dùng để che đậy sát khí và nuôi dưỡng huyết tà."

Tiêu Nhất Sương nắm chặt chuôi Băng Tâm Kiếm. Cảm giác lạnh lẽo quen thuộc từ chất thép hàn băng tỏa ra gạt đi cái nóng rát của ngọn lửa phục thù đang sôi sục trong lồng ngực. Chàng bình thản đáp:

"Dù là đầm rồng hang hổ, đêm nay ta cũng phải san bằng. Tạ Thiên Uy nợ gia tộc ta hàng trăm mạng người, từng kẻ mang danh Huyết Đao Giáo đều phải đền tội."

Mạc Hàn Nguyệt nhìn thẳng vào ánh mắt kiên định của chàng, khẽ gật đầu. Nàng không khuyên lơn, bởi nàng hiểu nỗi đau diệt môn xé lòng mà chàng đã mang suốt mười năm qua. Nàng khẽ nhấc tà áo trắng, ngón tay thon nhỏ búng ra ba mũi Băng Hồn Châm.

"Xoảng! Xoảng! Xoảng!"

Những tiếng va chạm kim loại khe khẽ vang lên giữa không trung. Ba luồng hàn khí xanh nhạt đâm thủng ba mắt trận ẩn sau những cây cột gỗ mục. Tức thì, một làn khói xám nhạt bốc lên rồi tan biến vào gió tuyết. Tòa ''Cửu Âm Trầm Mộc Trận'' lập tức bị vỡ. Cánh cửa gỗ nặng nề của Tuyết Phong Điếm không chịu nổi áp lực từ kiếm khí bên ngoài, tự động rên rỉ mở ra một khoảng trống tối om.

Không khí bên trong khách quán xộc ra bốc mùi máu tươi nồng nặc trộn lẫn với hương lưu huỳnh hăng hắc. Khắp nơi trong sảnh chính, bàn ghế bị đập phá tan tành, trên vách tường đá vẫn còn nguyên những vệt máu khô đen đúa, ghi dấu một cuộc tàn sát vừa diễn ra không lâu.

Hai người rón rén bước vào. Mạc Hàn Nguyệt lấy ra một viên Dạ Minh Châu. Ánh sáng dịu nhẹ tỏa ra từ viên ngọc xua tan bóng tối u ám, soi rỡ một lối đi ngầm ẩn sau chiếc tủ rượu gỗ mun đã bị đập vỡ phân nửa.

"Đường xuống mật thất," Mạc Hàn Nguyệt nói nhỏ. "Tà khí nồng nặc nhất bốc ra từ đây."

Tiêu Nhất Sương đi trước, Băng Tâm Kiếm đã tuốt khỏi bao một nửa, ánh thép xanh biếc hắt lên gương mặt góc cạnh, lạnh ưng của chàng. Hai người cẩn trọng bước xuống những bậc thang đá ẩm ướt, trơn trượt. Dưới lòng đất là một căn mật thất rộng lớn, được vách đá tự nhiên bao bọc. Trên vách tường khắc đầy những hình vẽ kỳ quái, mô tả cảnh những lưỡi đao rưới máu và những bộ lâu la quỳ rạp dưới chân một ma đầu.

Ở chính giữa mật thất là một chiếc bàn đá lớn. Trên bàn đặt một cuốn da cừu ố vàng cùng một hộp gỗ chạm khắc hình huyết rồng.

Tiêu Nhất Sương bước lại gần, dùng mũi kiếm gạt nhẹ nắp hộp gỗ. Bên trong trống rỗng, chỉ còn lại một lớp búp vải nhung đỏ đã bị xé rách. Chàng lật mở cuốn da cừu, từng dòng chữ khắc bằng máu khô hiện ra rõ mùng một:

*"Băng Tâm Ngọc Quyết - Bí bảo trấn sơn của Tiêu gia. Mang năng lượng hàn băng thuần khiết nhất thế gian, là vật duy nhất có thể trung hòa và trấn áp sự phản phệ của Huyết Ma Phạn Thiên Công. Cần phải thu thập đủ ba mảnh Ngọc Quyết trước ngày Trăng Tròn Tây Bắc để Giáo chủ hoàn thành tà công tuyệt đỉnh."*

Đọc đến đây, đôi bàn tay Tiêu Nhất Sương siết chặt đến mức các khớp xương kêu rắc rắc. Mạch máu trên trán chàng hằn lên dữ dội. Lửa phẫn nộ bùng lên thiêu rụi sự điềm tĩnh vốn có.

"Thì ra... thì ra là như vậy!" Giọng Tiêu Nhất Sương run lên vì căm hờn tột cùng. "Tạ Thiên Uy tàn sát Tiêu gia ta, không phải vì mâu thuẫn giang hồ thường tình! Hắn muốn chiếm đoạt Băng Tâm Ngọc Quyết để luyện thành cái thứ tà công tàn bạo đó! Gia tộc ta... cha mẹ ta... chỉ vì mang trong mình bí bảo mà bị chúng tàn sát không tha một ai!"

Mạc Hàn Nguyệt bước tới, nhẹ nhàng đặt bàn tay mềm mại nhưng mát lạnh lên mu bàn tay đang run lên của chàng. 

"Tiêu huynh, hãy giữ tâm Băng Tâm. Tạ Thiên Uy tàn nhẫn vô đạo, nhưng nếu huynh mất đi sự bình tĩnh, kiếm pháp của huynh sẽ xuất hiện sơ hở. Đó chính là điều hắn muốn."

Lời nói của Mạc Hàn Nguyệt như một dòng nước mát dội vào ngọn lửa giận đang bùng cháy trong lòng Tiêu Nhất Sương. Chàng hít một hơi thật sâu, nhắm mắt lại. Khí lạnh của Băng Tâm Kiếm Pháp luân chuyển trong kinh mạch, ép ngọn lửa giận xuống, trả lại cho đôi mắt chàng sự sâu thẳm và lạnh lẽo như băng ngàn năm.

"Cảm ơn Mạc cô nương. Ta hiểu rồi."

Vừa lúc đó, một tiếng cười điên dại, ghê rợn như tiếng kim loại ma sát trên đá vang lên từ bốn phía mật thất, chấn động cả căn phòng ngầm khiến đá dăm trên trần rơi rải rác:

"Khắc khắc khắc! Nhận ra thì đã quá muộn rồi, tên tàn dư họ Tiêu!"

Từ trong bóng tối sâu thẳm của mật thất, một bóng người cao lớn dũng mãnh bước ra. Hắn khoác đại bào màu đỏ sẫm như máu khô, gương mặt dữ tợn với một vết sẹo dài ngoằn ngoèo từ trán xuống tận cằm. Tay hắn lăm lăm một thanh đại đao hình lưỡi liềm, trên lưỡi đao phủ một lớp khí đỏ quạch tanh hưởi.

Sát khí cực đại cuộn trào theo từng bước chân của hắn.

"Huyết Thủ La Sát - La Độc!" Mạc Hàn Nguyệt thốt lên, ánh mắt trở nên ngưng trọng. "Hắn là một trong Tứ Đại Hộ Pháp của Huyết Đao Giáo, tay đã vấy máu vô số cao thủ chánh phái."

La Độc vung thanh Huyết Đao, chỉ thẳng vào mặt Tiêu Nhất Sương, nụ cười tàn nhẫn lộ ra hai hàng răng vàng khè:

"Tạ Giáo chủ dự đoán không sai chút nào! Tên ranh con còn sót lại của Tiêu gia chắc chắn sẽ mò theo vết máu mà tìm đến đây. Tốt lắm! Hôm nay ta không chỉ lấy mạng ngươi, mà còn lấy luôn thanh Băng Tâm Kiếm đó để dâng lên Giáo chủ!"

Hắn vừa dứt lời, từ các hốc đá xung quanh, hàng chục gã sát thủ mặc giáp đen của Huyết Đao Giáo lao ra như những con sói đói, vây kín Tiêu Nhất Sương và Mạc Hàn Nguyệt vào giữa.

"Xung phong! Sát!" La Độc gầm lên.

Báo hiệu cho trận chiến bùng nổ!

Hàng chục đao quang màu máu cuồn cuộn chém tới, xé rách không khí ẩm mốc của mật thất. Tà khí cuồn cuộn gầm hú như muốn nuốt chửng hai người.

"Băng Tâm Thất Tuyệt - Tuyết Tuyệt Thiên Lý!"

Tiêu Nhất Sương quát lớn, Băng Tâm Kiếm ra khỏi vỏ! Một tiếng ngâm trong trẻo vang vọng khắp mật thất ngầm. Luồng kiếm khí buốt giá tựa cơn bão tuyết Tây Bắc bùng nổ từ mũi kiếm của chàng, càn quét khắp bốn phương tám hướng.

"Rắc! Rắc! Rắc!"

Không khí trong mật thất dường như bị đóng băng trong chớp mắt. Những tên sát thủ Huyết Đao Giáo chưa kịp chạm tới mép áo Tiêu Nhất Sương đã bị luồng kiếm khí băng giá đâm xuyên qua ngực. Lớp giáp sắt của chúng nứt nẻ, máu tươi vừa phun ra đã lập tức bị đông cứng thành những hạt băng màu đỏ thẫm. Tiếng gào tháo thảm thiết vang lên rồi chìm ngập trong tiếng gió kiếm vút qua.

Cùng lúc đó, Mạc Hàn Nguyệt tung người lên không. Tà áo trắng của nàng tung bay như tiên nữ hạ giới. Nàng phất mạnh hai dải lụa bạch ngọc từ trong tay áo out ra, tạo thành một quầng sáng bạc lung linh.

"Nguyệt Quang Trận - Tịnh Hóa!"

Dải lụa mang theo linh lực mạnh mẽ của Linh Nguyệt Cung quét qua, phá tan những luồng tà khí màu máu đang đùn ra từ tường đá, đồng thời đánh văng năm ba gã sát thủ định thừa cơ đánh lén sau lưng Tiêu Nhất Sương. Sự phối hợp giữa hai người nhịp nhàng, ăn ý đến hoàn hảo, một lạnh lẽo tàn khốc, một tinh khiết cao sang, đánh cho giáo đồ Huyết Đao Giáo tan tác như lá mùa thu.

Thấy đám tay chân gục ngã hàng loạt, La Độc tức giận đến nổ mắt. Hắn gầm lên một tiếng như thú dữ, tà công trong người bùng nổ. Thanh Huyết Đao trên tay hắn rực cháy một ngọn lửa màu đỏ quạch, tàn bạo và tanh hưởi.

"Thằng ranh! Nhận lấy một đao này của ta! Huyết Đao Trảm Thiên!"

La Độc dậm mạnh chân xuống sàn đá, thân hình đồ sộ nhảy vọt lên không trung, vung đại đao chém xuống. Luồng đao mang màu máu khổng lồ dài hơn ba trượng chẻ đôi không khí, mang theo sức mạnh nghìn cân chém thẳng xuống đầu Tiêu Nhất Sương.

Sức ép dữ dội khiến nền đá dưới chân Tiêu Nhất Sương lún xuống từng mảng lớn. Nhưng ánh mắt chàng vẫn lạnh như tiền. Chàng không lùi một bước, tay cầm kiếm siết chặt. 

Hình ảnh cha mẹ gục ngã trong biển máu mười năm trước, hình ảnh gia tộc bị thiêu rụi bỗng nhiên hiện lên rõ mùng một trong tâm trí chàng. Nỗi đau thương tột cùng chuyển hóa thành một nguồn kiếm ý vô biên, thuần khiết đến mức không một tạp chất nào có thể xâm nhập.

"Băng Tâm Thất Tuyệt - Tâm Kiếm Hợp Nhất!"

Tiêu Nhất Sương vung kiếm từ dưới lên. Không có kiếm khí cuồn cuộn, không có tiếng gầm hú phô trương. Chỉ có một đường kiếm quang mảnh như sợi tóc, tinh khiết và trong suốt như giọt sương mai đọng trên tuyết trắng.

Đường kiếm ấy chạm vào luồng đao mang màu máu của La Độc.

"OANH!"

Một tiếng nổ kinh thiên động địa vang lên! Sóng xung kích cuồn cuộn thổi tung đất đá trong mật thất. Khói bụi và hơi lạnh bốc lên nghi ngút.

Giữa làn khói mờ ảo, La Độc khựng lại giữa không trung rồi rơi bịch xuống đất. Thanh Huyết Đao vang danh thiên hạ trên tay hắn bỗng xuất hiện một vết nứt mảnh, rồi "choảng" một tiếng, gãy đôi thành hai đoạn!

Vệt máu nhỏ xuất hiện trên cổ La Độc. Hắn trố mắt nhìn Tiêu Nhất Sương, gương mặt tràn ngập sự tin hãi và không thể tin nổi:

"Ngươi... kiếm pháp của ngươi... làm sao có thể..."

"Xẹt!"

Một vệt máu tươi phụt ra. La Độc ôm lấy cổ họng, gục xuống sàn đá đẫm máu. Trước khi trút hơi thở cuối cùng, đôi mắt hắn trợn ngược, miệng lẩm nhẩm những lời thều thào tàn độc:

"Giáo chủ... Giáo chủ đã lên đỉnh... Tuyết Sơn... Tà công sắp thành... Ngươi... ngươi chỉ đến... nộp mạng..."

Căn mật thất chìm vào sự yên tĩnh chết chóc. Tà khí cuồn cuộn lúc trước bị quét sạch, chỉ còn lại hương thơm thanh khiết của hàn băng và tiếng gió tuyết rên rỉ từ cửa hầm dội xuống.

Tiêu Nhất Sương chậm rãi tra Băng Tâm Kiếm vào vỏ. Chàng đứng lặng giữa mật thất u tối, ánh mắt đăm đăm nhìn về phía thi thể La Độc, rồi ngước nhìn về phía Bắc – nơi đỉnh Tuyết Sơn cao chọc trời đang ẩn mình trong mây mù bão tuyết.

Mạc Hàn Nguyệt nhẹ nhàng bước lại bên cạnh chàng, thu hồi dải lụa trắng. Nàng nhìn vết máu tươi trên sàn đá, rồi cất giọng trầm tư:

"Lời hắn nói trước khi chết... Tạ Thiên Uy đang ở trên đỉnh Tuyết Sơn để luyện tầng cuối cùng của Huyết Ma Phạn Thiên Công. Hắn muốn dùng địa thế cực hàn của đỉnh Tuyết Sơn để ép tà khí nhập thể."

Tiêu Nhất Sương quay lại, đôi mắt sáng quắc như sao đêm, đong đầy sự kiên định không gì lay chuyển nổi:

"Vậy thì đỉnh Tuyết Sơn sẽ là nơi kết thúc tất cả. Mười năm nếm mật nằm gai, mười năm rèn luyện Băng Tâm Kiếm Pháp, chính là vì trận chiến này."

Chàng ngước nhìn lên khoảng không u tối của đường hầm, giọng nói vang lên kiên định, át cả tiếng gió bão gầm hú ngoài kia:

"Mạc cô nương, cảm ơn cô đã đồng hành cùng ta suốt chặng đường qua. Nhưng đỉnh Tuyết Sơn nguy hiểm khôn lường, Tạ Thiên Uy tàn bạo vô cùng..."

Mạc Hàn Nguyệt không chờ chàng nói hết câu, nàng khẽ mỉm cười, một nụ cười thanh thoát như hoa tuyết nở giữa đêm đông:

"Tiêu huynh coi Mạc Hàn Nguyệt ta là người tham sống sợ chết sao? Linh Nguyệt Cung ta từ lâu đã coi việc trừ tà vệ đạo làm nghĩa vụ. Hơn nữa... chặng đường này, ta nhất định sẽ cùng huynh đi đến tận cùng."

Tiêu Nhất Sương nhìn sâu vào mắt nàng, lòng trào dâng một luồng ấm áp giữa đêm tuyết giá lạnh. Chàng gật đầu mạnh một cái:

"Được! Đêm nay nghỉ ngơi tại đây, bình minh sáng mai, chúng ta sẽ thẳng tiến Tuyết Sơn!"

Ngoài kia, bão tuyết vẫn gầm hú dữ dội, nhưng trong lòng thiếu niên mang Băng Tâm Kiếm, ngọn lửa công lý và chí phục thù đã rực cháy hơn bao giờ hết. Trận chiến sinh tử cuối cùng trên đỉnh Tuyết Sơn đang chờ đón họ phía trước.', 'https://aczlbeorxmewcaqoetzr.supabase.co/storage/v1/object/public/Audio/56f990fa-80f1-4a09-93d4-629e76d67eeb_8.mp3', 661, 'ready', '2026-09-17 11:11:59.904', '2026-09-22 13:58:57.739');
INSERT INTO public.chapters (id, story_id, chapter_number, title, text_content, audio_url, audio_duration_seconds, status, created_at, updated_at) VALUES ('8b71f79e-a623-468e-aeb1-e6183c9d6bac', '56f990fa-80f1-4a09-93d4-629e76d67eeb', 1, 'Chương 1', '**CHƯƠNG 1: TUYẾT NHAI XUẤT KIẾM, PHONG HÀN DIỆN THÙ**

Gió tuyết trên đỉnh Tuyết Nhai gầm hú như tiếng gào khóc của muôn ngàn vong linh. Cơn bão tuyết kéo dài suốt ba ngày ba đêm vẫn chưa có dấu hiệu dừng lại, phủ một màu trắng xóa ngút ngàn lên những rặng núi trập trùng miền Tây Bắc. 

Trên vách đá sừng sững bọc trong băng giá, một thiếu niên áo trắng đứng lặng im như một pho tượng. Dù cái lạnh có thể đóng băng cả huyết quản của kẻ thông thường, nhưng xung quanh thân thể chàng, những hạt tuyết rơi xuống lại nhẹ nhàng tan chảy trước khi chạm vào vạt áo. 

Thanh cổ kiếm sau lưng khẽ rung lên, phát ra tiếng ngâm trong trẻo như tiếng khánh ngọc. Thiêu niên ấy chính là Tiêu Nhất Sương.

Mười năm. Đã tròn mười năm trôi qua kể từ cái đêm đẫm máu ấy.

Trong tâm trí Tiêu Nhất Sương, hình ảnh Tiêu Gia Trang chìm trong biển lửa ngút trời chưa bao giờ phai nhạt. Đêm đó, tuyết cũng rơi nhiều như thế này, nhưng màu tuyết trắng nhuốm trọn sắc đỏ thẫm của máu tươi. Tiếng gào thét của phụ thân, tiếng khóc nghẹn ngào của mẫu thân, và nụ cười điên dại của kẻ cầm đầu mang chiếc mặt nạ quỷ dữ với thanh đao cong như vầng trăng máu... Tất cả như những mũi khoan nhọn khắc sâu vào linh hồn chàng mỗi khi đêm về.

Gia tộc bị diệt môn trong một đêm, hàng trăm mạng người trở thành tro bụi. Khi đó, Tiêu Nhất Sương mới tám tuổi, ẩn nấp dưới hầm băng chật hẹp, trối mắt nhìn từng người thân rơi xuống. Chàng đã sống sót nhờ sự che chở của số phận và được một ẩn sĩ kỳ bí cứu rỗi, mang về đỉnh Tuyết Nhai này.

"Nhất Sương, Băng Tâm Kiếm Pháp không phải dùng để giết người, mà để gìn giữ sự thanh khiết của tâm hồn. Nhưng nếu tâm con bị hận thù gặm nhấm, kiếm khí của con sẽ biến thành tà băng, tự đóng băng chính bản thân mình."

Lời dặn dò của ân sư trước khi người tạ thế vãng sanh vẫn còn vang vọng bên tai. Tiêu Nhất Sương chậm rãi nhắm mắt, hít một hơi khí lạnh thấu xương vào lồng ngực. Khi mở mắt ra, đôi đồng tử của chàng đã trở nên trong suốt như thủy tinh, phẳng lặng không một gợn sóng.

Tâm như băng tuyết, kiếm xuất như rồng.

Chàng đã luyện thành tầng cao nhất của Băng Tâm Kiếm Pháp. Đã đến lúc xuống núi. Đã đến lúc đòi lại món nợ máu năm xưa.

***

Dưới chân núi Tuyết Nhai là Phong Hàn Trấn, một thị trấn nhỏ quanh năm bị bao phủ bởi sương mù và tuyết lạnh. Thị trấn này là giao lộ giữa trung nguyên và ngoại vực, nơi rồng rắn lẫn lộn, tụ họp đủ loại giang hồ thuật sĩ, thương nhân và cả những kẻ sống ngoài vòng pháp luật.

Khách sạn "Phong Hàn Điếm" là nơi náo nhiệt nhất thị trấn. Bên trong, tiếng cụng ly, tiếng bàn tán rôm rả hòa lẫn với mùi rượu nồng và mùi thịt nướng tạo nên một không khí ấm áp đối lập hoàn toàn với cái lạnh cắt da cắt thịt bên ngoài.

Tiêu Nhất Sương bước vào quán, chọn một góc tối gần cửa sổ, lặng lẽ gọi một vò rượu nhỏ và một đĩa thức ăn thanh tịnh. Chiếc nón lá che nửa khuôn mặt tuấn tú nhưng lạnh lùng, thanh cổ kiếm bọc trong vải thô đặt ngay ngắn trên bàn.

"Nghe nói gì chưa? Huyết Đao Giáo gần đây lại hoành hành ở vùng phụ cận. Mấy môn phái nhỏ quanh đây đều bị bọn chúng san bằng rồi!"

"Suyệt! Nhỏ tiếng thôi! Ngươi muốn rước họa vào thân à? Huyết Đao Giáo hiện nay thế lực nghiêng trời lệch đất. Nghe đâu Giáo chủ Tạ Thiên Uy đã luyện thành Huyết Đao Đại Pháp đến tầng thứ tám, tàn nhẫn vô cùng!"

"Hắn xua quân đi khắp nơi như vậy là để tìm kiếm cái gì chứ?"

"Hình như là một mảnh bảo ngọc... Gọi là Băng Tâm Ngọc Quyết thì phải. Nghe đồn chứa đựng bí mật về một kho tàng võ học thượng thừa có thể độc bá võ lâm..."

Những tiếng bàn tán xì xầm rơi vào tai Tiêu Nhất Sương. Bàn tay đang cầm chén rượu của chàng khẽ khựng lại.

*Huyết Đao Giáo... Tạ Thiên Uy... Băng Tâm Ngọc Quyết...*

Đôi mắt Tiêu Nhất Sương lóe lên một luồng sát khí lạnh ngắt. Năm xưa, kẻ dẫn đầu nhóm sát thủ tàn sát Tiêu gia chính là người sử dụng Huyết Đao Tuyệt Kỹ. Và thứ bọn chúng lục soát khắp Tiêu gia chính là nửa mảnh Băng Tâm Ngọc Quyết – gia bảo truyền đời của họ Tiêu mà phụ thân chàng đã hy sinh tính mạng để cất giấu.

Đúng lúc đó, cánh cửa gỗ của Phong Hàn Điếm bị đạp tung ra. Một luồng gió tuyết thô bạo tràn vào, kéo theo đó là sát khí nồng nặc.

Bốn năm tên nam tử mặc huyết衣 (áo đỏ máu), tay lăm lăm những thanh đao cong sắc lẹm, bước vào quán với vẻ mặt hống hách. Trên ngực áo bọn chúng đều thêu hình một thanh đao rớm máu – biểu tượng của Huyết Đao Giáo.

Cả khách sạn lập tức im bạt. Những tay giang hồ vừa rồi còn ba hoa giờ đây đều cúi gập mặt, không ai dám thở mạnh.

Kẻ cầm đầu nhóm người áo đỏ có một vệt sẹo dài gớm ghiếc trên mặt, đảo mắt quanh quán rồi quát lớn:
"Tất cả ngồi yên! Huyết Đao Giáo làm việc, kẻ nào dám nhúc nhích, đầu rơi khỏi cổ!"

Tên mặt sẹo tiến thẳng về phía một góc bàn khác, nơi có một nữ tử đang lặng lẽ ngồi uống trà.

Nữ tử ấy mặc một bộ y phục màu xanh nhạt như làn nước mùa thu, khí chất thanh tao vượt tục, hoàn toàn khác biệt với vẻ thô ráp của thế giới giang hồ xung quanh. Trên bàn của nàng đặt một chiếc hộp gỗ bách hương chạm khắc tinh xảo và một vài bình ngọc nhỏ.

"Mạc Trưởng lão của Linh Nguyệt Cung, quả nhiên là danh bất hư truyền, đẹp như tiên nữ hạ giới!" Tên mặt sẹo nở nụ cười dâm tà, cất giọng cợt nhả. "Mạc Hàn Nguyệt, giáo chủ chúng ta có lời mời cô nương về Huyết Đao Giáo làm khách quý. Khuyên cô nên ngoan ngoãn đi theo, bằng không..."

Nữ tử áo xanh – Mạc Hàn Nguyệt – chậm rãi đặt chén trà xuống bàn. Nàng không hề ngước mắt lên, giọng nói trong trẻo như tiếng suối chảy qua khe đá nhưng mang theo sự uy nghiêm không thể xâm phạm:
"Huyết Đao Giáo các ngươi tàn sát vô辜, gieo rắc tai ưng khắp nơi. Linh Nguyệt Cung ta cùng các ngươi giếng nước không phạm nước giếng, cút đi trước khi ta mất kiên nhẫn."

"Kháo! Con tiện nhân ngông cuồng!" Tên mặt sẹo tức giận chửi đổng. "Linh Nguyệt Cung thì sao chứ? Giáo chủ đã ra lệnh, hôm nay dù là thiên vương lão tử cũng không cứu được ngươi! Bắt lấy nó!"

Ba tên tay sai lập tức vung đao xông lên. Những ánh đao đỏ quạnh mang theo mùi máu tanh nồng xé rách không khí, bọc lấy Mạc Hàn Nguyệt.

Mạc Hàn Nguyệt vẻ mặt không đổi. Nàng khẽ vung tay áo dài, vài ngọn ngân châm mỏng như lông vũ bắn ra, xé gió lao đi. 

*Xoẹt! Xoẹt!*

Hai tên tay sai ngã gục xuống sàn, tay ôm lấy cổ họng, mặt mày xám xịt. Nhưng tên còn lại và tên mặt sẹo đã sớm có sự chuẩn bị. Tên mặt sẹo gầm lên một tiếng, huyết đao trong tay phát ra ánh sáng đỏ rực, chém tan những ngọn ngân châm tiếp theo, đồng thời bổ mạnh xuống đầu Mạc Hàn Nguyệt.

"Ngươi nghĩ chút y thuật và trận pháp vặt vãnh đó làm gì được ta sao?" Tên mặt sẹo cười khoái trá.

Mạc Hàn Nguyệt nhíu mày, tay bấm ấn định thi triển trận pháp phòng thủ, nhưng khoảng cách quá gần, lực đao của đối phương lại quá hăng máu, khí huyết trong người nàng khẽ chấn động.

Đúng lúc thanh huyết đao chỉ còn cách đỉnh đầu Mạc Hàn Nguyệt nửa thước, một luồng hàn khí thấu xương đột ngột bùng nổ từ góc quán!

*KÍNG!*

Một tiếng động giòn giã, vang dội cất lên. 

Thanh huyết đao tàn bạo của tên mặt sẹo khựng lại giữa không trung, không thể nhích thêm dù chỉ một phân. Ngay trên lưỡi đao màu đỏ máu, một lớp băng tuyết dầy đặc đang lan rộng với tốc độ chóng mặt, đóng băng cả cánh tay và luồng đao khí của hắn.

Tên mặt sẹo kinh hoàng ngẩng đầu lên. 

Trước mặt hắn, thiếu niên áo trắng đã xuất hiện từ bao giờ. Thanh cổ kiếm trong tay chàng vẫn còn nằm nguyên trong bao, nhưng chỉ bằng một cú đỡ nhẹ nhàng từ thân vỏ kiếm, chàng đã triệt hạ hoàn toàn đòn đánh liều mạng của một cao thủ Huyết Đao Giáo.

"Ngươi... Ngươi là ai?!" Tên mặt sẹo run rẩy hỏi, giọng nói thất thanh vì luồng hàn khí đang xâm nhập vào kinh mạch hắn.

Tiêu Nhất Sương không trả lời. Đôi mắt chàng lạnh lẽo như băng tuyết ngàn năm trên đỉnh Tuyết Nhai. Chàng nhìn chằm chằm vào biểu tượng Huyết Đao trên ngực áo tên mặt sẹo, cất giọng trầm thấp, chứa đựng ngọn lửa hận thù đã nén chặt mười năm:

"Huyết Đao Giáo... Tạ Thiên Uy hiện đang ở đâu?"

"Ngươi... Ngươi dám gọi thẳng tên Giáo chủ? Tìm chết!" Tên mặt sẹo hoảng sợ đến mức hóa điên, gầm lên và dùng tay còn lại rút ra một vung đoản đao tàn độc tạt ngang bụng Tiêu Nhất Sương.

"Cẩn thận!" Mạc Hàn Nguyệt ở phía sau khẽ cất tiếng cảnh báo.

Nhưng Tiêu Nhất Sương không hề né tránh. Chàng chỉ nhẹ nhàng rút kiếm.

*Xoẹt!*

Một đạo kiếm quang màu xanh lam nhạt lóe lên, soi sáng cả căn phòng tối tân. Căn phòng lập tức hạ nhiệt độ xuống độ âm, hơi thở của mọi người ngưng tụ thành băng giá. Đó không phải là một đòn đánh cầu kỳ, mà là sự tinh túy tuyệt đối của tốc độ và hàn khí.

Băng Tâm Kiếm Pháp – Chiêu thứ nhất: Tuyết Lạc Vô Thanh!

Tên mặt sẹo sững người tại chỗ. Đoản đao trong tay hắn gãy làm đôi. Ngay sau đó, một đường chỉ đỏ mảnh như sợi tóc xuất hiện trên cổ hắn. Lớp băng tuyết bao phủ lấy thân thể hắn trước khi một giọt máu kịp bắn ra.

*Bốp!*

Tên mặt sẹo ngã gục xuống sàn, biến thành một pho tượng băng vỡ vụn. Tên tay sai còn lại sợ hãi đến mức đái ra quần, bò lết trên mặt đất: "Ma... Ma quỷ! Ngươi là ma quỷ!" Rồi cắm đầu chạy trốn ra ngoài bão tuyết.

Tiêu Nhất Sương không đuổi theo. Chàng tra kiếm vào bao. Tiếng *cạch* vang lên nhẹ nhàng nhưng kéo mọi người trong Phong Hàn Điếm trở về với thực tại. 

Cả quán ăn chìm trong sự bàng hoàng tuyệt đối. Chỉ bằng một kiếm, không tốn một chút sức lực, thiếu niên vô danh này đã tiêu diệt một cao thủ Huyết Đao Giáo!

Mạc Hàn Nguyệt đứng dậy, đôi mắt phượng đẹp đẽ đong đầy sự kinh ngạc nhìn thiếu niên trước mặt. Nàng vốn là Trưởng lão trẻ tuổi nhất của Linh Nguyệt Cung, đọc qua muôn vàn điển tịch võ học, lập tức nhận ra lai lịch của chiêu kiếm vừa rồi.

"Hàn khí nhập cốt, kiếm xuất như tuyết... Đây là Băng Tâm Kiếm Pháp đã tuyệt tích giang hồ mười năm trước!" Mạc Hàn Nguyệt nhẹ nhàng bước tới, nghiêng mình cất lời. "Bổn cung là Mạc Hàn Nguyệt của Linh Nguyệt Cung. Đa tạ công tử đã ra tay tương trợ."

Tiêu Nhất Sương xoay người lại, ánh mắt chạm phải ánh mắt trong trẻo nhưng đầy sự thông tuệ của Mạc Hàn Nguyệt. Chàng tháo nón lá xuống, để lộ khuôn mặt góc cạnh, tuấn tú nhưng phảng phất nỗi buồn sâu thẫm.

"Ta không tương trợ cô. Ta chỉ giết người của Huyết Đao Giáo." Tiêu Nhất Sương lạnh nhạt đáp.

Mạc Hàn Nguyệt không vì thái độ lạnh lùng của chàng mà tức giận. Nàng nhìn thoáng qua thanh cổ kiếm của Tiêu Nhất Sương, rồi nhìn lớp băng chưa tan trên sàn nhà, thầm đoán ra điều gì đó.

"Công tử có mối thù sâu nặng với Huyết Đao Giáo?" Mạc Hàn Nguyệt khẽ thở dài. "Nếu vậy, công tử xuất sơn lần này e là sẽ gặp vô vàn nguy hiểm. Huyết Đao Giáo không còn như mười năm trước. Tạ Thiên Uy đã bí mật thâu tóm nhiều thế lực chánh phái, và hắn đang ráo riết truy tìm Băng Tâm Ngọc Quyết để luyện thành tà công bá chủ."

Nghe đến bốn chữ "Băng Tâm Ngọc Quyết", ngón tay Tiêu Nhất Sương khẽ siết chặt lấy vỏ kiếm.

"Hắn muốn Ngọc Quyết..." Tiêu Nhất Sương nhếch môi nở một nụ cười lạnh giễu cợt. "Vậy thì tốt lắm. Ta sẽ dùng chính Băng Tâm Kiếm Pháp để đưa hắn xuống hoàng tuyền."

Mạc Hàn Nguyệt nhìn thẳng vào mắt Tiêu Nhất Sương, cảm nhận được sự cô độc và gánh nặng ngút trời trên vai thiếu niên này. Nàng khẽ gật đầu, cất giọng kiên định:
"Huyết Đao Giáo tàn hại võ lâm, Linh Nguyệt Cung ta cũng đang truy tìm hành tung của Tạ Thiên Uy để ngăn chặn thảm họa. Nếu công tử không chê, Hàn Nguyệt nguyện cùng đi một đoạn đường."

Gió tuyết bên ngoài Phong Hàn Điếm vẫn gầm hú, nhưng bên trong, cuộc hội ngộ định mệnh giữa thiếu niên mang mối thù diệt tộc và vị Trưởng lão trẻ tuổi của Linh Nguyệt Cung đã bắt đầu.

Con đường truy tìm công lý và rửa hận gia tộc của Tiêu Nhất Sương từ đây chính thức mở ra, nhuốm đầy máu và tuyết trắng trên giang hồ.', 'https://aczlbeorxmewcaqoetzr.supabase.co/storage/v1/object/public/Audio/56f990fa-80f1-4a09-93d4-629e76d67eeb_1.mp3', 621, 'ready', '2026-09-17 11:11:59.904', '2026-09-22 10:02:03.315');
INSERT INTO public.chapters (id, story_id, chapter_number, title, text_content, audio_url, audio_duration_seconds, status, created_at, updated_at) VALUES ('524ebae7-6396-4b21-84f7-da5417504e7b', '56f990fa-80f1-4a09-93d4-629e76d67eeb', 2, 'Chương 2', '**CHƯƠNG 2: MÂY MÙ LẠC TUYẾT, TƯƠNG PHÙNG TRONG BÃO**

Gió lạnh miền Tây Bắc như những lưỡi dao băng sắc lẹm, gọt giũa từng rặng đá tai mèo nham nhở. Dưới chân đỉnh Tuyết Nhai, đường xuống núi bị bao phủ bởi từng lớp tuyết dày cộp. Mỗi bước chân của Tiêu Nhất Sương in sâu vào lòng tuyết trắng, nhưng chỉ vài nhịp thở sau, gió bão đã xóa sạch dấu vết như thể chàng chưa từng tồn tại ở chốn này.

Mười năm. Đúng mười năm trôi qua kể từ đêm thảm án Tiêu gia trang. Đêm đó, máu nhuộm đỏ tuyết, tiếng gào khóc của người thân, ánh đao đỏ quạch tàn nhẫn và gương mặt ẩn trong màn đêm của kẻ cầm đầu đã trở thành cơn ác mộng bám riết lấy chàng trong từng giấc ngủ. Giờ đây, Tiêu Nhất Sương không còn là cậu bé mười tuổi yếu ớt ngày nào. Tay chàng siết chặt chuôi kiếm Băng Tâm, thanh cổ kiếm phát ra những tiếng ngân khẽ vang, tích tụ thứ kiếm khí lạnh lẽo thấu xương.

Đi hết con đường hiểm trở xuống đến chân núi, bão tuyết bắt đầu có dấu hiệu nguôi bớt. Trước mắt chàng hiện ra Lạc Tuyết Điếm – một tửu quán nhỏ cô quạnh nằm ngay ngã ba đường, nơi dừng chân duy nhất của giới thương hồ và sĩ tộc khi qua lại vùng biên giới Tây Bắc.

Tiêu Nhất Sương đẩy cánh cửa gỗ dày nặng nề bước vào. Gió lạnh tràn theo vạt áo chàng làm ngọn đèn dầu treo trên trần nhà chao đảo mạnh.

Bên trong tửu quán không khí u uất và nồng nặc mùi rượu rẻ tiền hỗn tạp với mùi mồ hôi. Hơn mười gã giang hồ đang ngồi quanh mấy chiếc bàn gỗ mục. Chúng ăn mặc xộc xệch, bên hông đều đeo những thanh đao cong có vỏ bọc da thú màu đỏ sẫm. Trên ngực áo chúng thêu hình một lưỡi đao rớm máu – biểu trưng của Huyết Đao Giáo.

Sự xuất hiện của Tiêu Nhất Sương khiến không khí trong quán bỗng nhiên chùng xuống. Ánh mắt chàng lạnh lẽo như băng tuyết ngoài trời, mái tóc đen cột gọn sau lưng, tấm áo choàng xám tung bay nhẹ dù gió ngoài cửa đã tắt. Chàng không liếc nhìn ai, thong thả bước đến một góc trống gần cửa sổ, đặt thanh kiếm lên bàn rồi cất giọng trầm thấp:

"Tiểu nhị, cho một hũ rượu ấm và vài món đạm bạc."

Tên tiểu nhị run rẩy mang rượu thịt lên rồi vội vã lui vào trong. Tiêu Nhất Sương rót một chén rượu, hơi ấm từ chén gốm tỏa ra nhưng không làm giảm đi sự lạnh giá trong đôi mắt chàng. Chàng đang lắng nghe. Tay giang hồ luyện võ công đến cấp độ cao có thể nghe thấy tiếng tim đập, tiếng hít thở trong phạm vi vài mươi trượng.

"Này, nghe nói lũ Linh Nguyệt Cung lại vừa can thiệp vào chuyện của giáo ta ở Vân Châu?" – Một tên mặt sẹo trong đám Huyết Đao Giáo đập mạnh chén rượu xuống bàn, tiếng gầm gừ vang lên.

Gã ngồi đối diện, trông có vẻ là một đàn chủ, cười khẩy: "Một đám nữ nhân chuyên chữa bệnh bốc thuốc thì làm nên trò trống gì? Bổn giáo chủ sắp luyện thành đỉnh cao của Huyết Đao Thần Công. Khi đó, không chỉ Linh Nguyệt Cung mà cả cái võ lâm chánh phái này cũng phải quỳ gối. Chỉ tiếc là..."

Gã dừng lại, hạ thấp giọng nhưng vẫn không thoát khỏi tai Tiêu Nhất Sương: "Chỉ tiếc là nửa mảnh *Băng Tâm Ngọc Quyết* năm xưa thất lạc ở Tiêu gia trang vẫn chưa tìm thấy. Rốt cuộc gã Tiêu Trọng năm đó đã giấu nó ở đâu?"

"Băng Tâm Ngọc Quyết..."

Bốn chữ đó vừa thốt ra, tay cầm chén rượu của Tiêu Nhất Sương khẽ khựng lại. Một tia sát khí giấu kín trong đáy mắt chàng bùng lên rồi nhanh chóng tắt lụi. Tiêu Trọng – đó chính là phụ thân của chàng! Năm xưa, Huyết Đao Giáo tàn sát cả gia tộc chàng không chỉ vì ân oán giang hồ, mà chính là để cướp đoạt mảnh Băng Tâm Ngọc Quyết – báu vật gia truyền của Tiêu gia, thứ có thể áp chế hỏa độc và ma tính khi luyện các loại tà công tuyệt đỉnh!

Đúng lúc đó, từ góc tối đối diện bàn của Tiêu Nhất Sương, một tiếng thở dài nhẹ nhàng như làn gió xuân vang lên. 

"Rượu chưa nhấp môi đã khoác hác đại ngôn. Huyết Đao Giáo các người ngoài việc ỷ đông hiếp yếu, tàn hại kẻ vô tội thì còn kỹ năng gì khác sao?"

Giọng nói trong trẻo, êm dịu nhưng lại chứa đựng nội lực thâm hậu, truyền đi khắp tửu quán khiến ngọn lửa trên các cây đèn dầu đồng loạt rực sáng lên rồi chao đảo.

Mọi ánh mắt trong quán lập tức dồn về phía phát ra tiếng nói. 

Ở gầm cầu thang, một thiếu nữ trẻ tuổi đang thong thả nhấp trà. Nàng mặc bộ y phục màu xanh ngọc bích của Linh Nguyệt Cung, dải lụa trắng quấn quanh eo khoe vóc dáng thanh thoát. Gương mặt nàng tuyệt mỹ nhưng điềm tĩnh, đôi mắt trong veo như hồ nước thu, bên hông đeo một túi gấm đựng châm kim và một chiếc quạt xếp mỏng bằng sắt. Đó chính là Mạc Hàn Nguyệt – Trưởng lão trẻ tuổi nhất của Linh Nguyệt Cung, người nổi danh giang hồ với y thuật cải tử hoàn sinh và khả năng bấm quẻ, bố trí trận pháp thiên tài.

Tên mặt sẹo của Huyết Đao Giáo đứng bật dậy, bản đao cong vang lên tiếng "Keng" sắc lẹm khi rút ra khỏi vỏ: "Đao nương kia! Ngươi là người của Linh Nguyệt Cung? Ranh con hỉ mũi chưa sạch mà dám hỗn xược với Huyết Đao Giáo ta?"

Mạc Hàn Nguyệt nhẹ nhàng đặt chén trà xuống bàn, không chút sợ hãi. Nàng liếc nhìn tên mặt sẹo, rồi ánh mắt vô tình lướt qua Tiêu Nhất Sương. Nhờ y thuật cao cường, nàng nhận ra ngay luồng khí lạnh kỳ lạ tỏa ra từ người thiếu niên áo xám này – một luồng chí hàn chân khí thuần khiết đến mức đáng sợ, hoàn toàn trái ngược với sự nóng nảy, cuồng bạo của đám đồ đệ Huyết Đao Giáo.

"Ta nói sai sao?" Mạc Hàn Nguyệt mỉm cười nhẹ nhàng, nhưng ánh mắt đầy vẻ giễu cợt. "Tạ Thiên Uy luyện tà công bị tẩu hỏa nhập ma, ba tháng nay phải dùng máu trinh nữ để dập tắt hỏa độc trong người. Thứ võ công như vậy mà đòi độc bá võ lâm? E là chưa diệt được chánh phái thì hắn đã tự nổ tung kinh mạch mà chết rồi!"

"Câm miệng! Dám xúc phạm Giáo chủ!"

Tên đàn chủ Huyết Đao Giáo tức giận đến mức mặt mày biến dạng. Gã vỗ mạnh lên mặt bàn, cả chiếc bàn gỗ sồi dày biến thành đống vụn gọt. "Bắt lấy nó! Giáo chủ đang cần nữ nhân có nội công thuần âm của Linh Nguyệt Cung để làm dược dẫn. Đúng là trời giúp ta!"

Ngay lập tức, năm sáu tên đệ tử Huyết Đao Giáo vung đao vọt tới. Ánh đao đỏ quạch như máu xé rách không khí, mang theo mùi hôi nồng nặc của huyết độc, bổ xuống đầu Mạc Hàn Nguyệt.

Mạc Hàn Nguyệt không chút hoảng loạn. Ngón tay thon dài của nàng kẹp lấy ba kim ngân châm, vung tay một cái.

*Xoẹt! Xoẹt! Xoẹt!*

Ba tiếng xé gió ngân vang. Ba tên chạy đầu tiên khựng khựng lại, ngã gục xuống sàn, tay ôm lấy huyệt Yêu Nhãn trên cổ, toàn thân tê liệt không thể cử động. Y thuật của nàng không chỉ dùng để cứu người, mà khi cần, từng điểm huyệt vị trên cơ thể đối phương đều là mục tiêu chết người.

Tuy nhiên, tên đàn chủ và những kẻ còn lại rất đông. Chúng lập tức biến đổi đội hình, sử dụng *Huyết Đao Trận* bao vây lấy Mạc Hàn Nguyệt. Ánh đao đan thành một tấm lưới máu đè nén không khí trong tửu quán, chặn đứng mọi đường lui của nàng.

"Tiểu nha đầu, xem ngươi chống đỡ được bao lâu!" Tên đàn chủ cười điên dại, đao khí bùng nổ chém thẳng vào sườn Mạc Hàn Nguyệt.

Mạc Hàn Nguyệt xòe chiếc quạt sắt chặn lại một đao, nhưng lực chấn động mạnh mẽ từ tà công khiến nàng phải lùi lại hai bước, sắc mặt khẽ biến đổi. Nàng giỏi trận pháp và y thuật, nhưng đối đầu trực diện về sức mạnh với tà giáo hung hãn này thì rõ ràng chịu thiệt thòi.

Đúng lúc thanh đao thứ hai của tên mặt sẹo chém tới đỉnh đầu nàng, một tiếng ngân trong trẻo, lạnh lùng vang vọng khắp căn phòng, lấn át cả tiếng bão tuyết ngoài trời.

*CẢNG!*

Một tia sáng trắng lạnh lẽo vụt qua không trung như một tia sét bằng băng. 

Thanh đao của tên mặt sẹo gãy làm đôi, vết gãy phẳng lì và ngay lập tức bị bao phủ bởi một lớp sương băng trắng xóa. Tay hắn tê dại, chưa kịp hiểu chuyện gì xảy ra thì một bàn tay lạnh như băng đã nắm chặt lấy cổ họng hắn, nhấc bổng hắn lên khỏi mặt đất.

Là Tiêu Nhất Sương!

Chàng đã rời khỏi vị trí từ lúc nào, thanh Băng Tâm Kiếm vẫn chưa ra khỏi vỏ hoàn toàn, chỉ mới hé lộ một tấc lưỡi kiếm nhưng hàn khí tỏa ra đã làm sàn nhà bằng gỗ đóng băng từng mảng lớn.

"Ngươi... ngươi là ai?" Tên đàn chủ Huyết Đao Giáo giật mình lùi lại, cảm nhận được luồng nguy hiểm tột cùng từ thiếu niên áo xám này.

Tiêu Nhất Sương không trả lời. Ánh mắt chàng xoáy sâu vào gã mặt sẹo đang giãy giụa trong tay mình, giọng nói như từ cõi âm ti truyền về: "Vừa rồi ngươi nói... mười năm trước, Tạ Thiên Uy đã tàn sát Tiêu gia trang để tìm Băng Tâm Ngọc Quyết?"

"Ngươi... Ngươi liên quan gì đến Tiêu gia..." Tên mặt sẹo ú ớ, mặt mày tím tái vì thiếu oxy và vì luồng hàn khí đang xâm nhập vào phế quản.

"Ta là người sẽ đòi lại món nợ máu đó!"

Tiêu Nhất Sương vung tay hất văng tên mặt sẹo vào tường. Ngay lập tức, chàng tuốt kiếm ra khỏi vỏ!

*Xoạt!*

Kiếm quang bùng nổ! Một luồng kiếm khí màu trắng tuyết cuồn cuộn xuất hiện, biến không gian bên trong tửu quán thành một hầm băng tột cùng. Băng Tâm Kiếm Pháp – chiêu thứ nhất: *Tuyết Lạc Vô Thanh*!

Động tác của Tiêu Nhất Sương nhanh đến mức mắt thường không thể theo kịp. Chàng di chuyển như một bóng ma giữa đám người Huyết Đao Giáo. Mỗi đường kiếm lướt qua đều kèm theo tiếng băng giá ngưng tụ.

*Xoạt! Xoạt! Xoạt!*

Những tiếng đao gãy vang lên liên hồi. Đệ tử Huyết Đao Giáo chưa kịp vung đao đã thấy ngực mình lạnh ngắt, kiếm khí cực hàn đã phong tỏa kinh mạch và làm đông máu trong cơ thể chúng. Lần lượt từng gã ngã xuống, không một giọt máu nào chảy ra sàn vì vết thương đã bị đóng băng ngay lập tức.

Tên đàn chủ hoảng sợ tột độ. Gã nhận ra thứ kiếm pháp này – thứ kiếm pháp chí hàn mà Giáo chủ Tạ Thiên Uy luôn nhắc đến như một mối đe dọa lớn nhất đối với Huyết Đao Thần Công!

"Băng Tâm Kiếm Pháp! Ngươi... ngươi là tàn dư của Tiêu gia!" Tên đàn chủ gào lên, dồn toàn bộ tà lực vào thanh đao, gã tung ra chiêu thức tàn bạo nhất – *Huyết Hải Sát Bão*, biến toàn bộ lưỡi đao thành một quầng lửa đỏ quạch lao về phía Tiêu Nhất Sương.

Mạc Hàn Nguyệt đứng bên cạnh vội lên tiếng cảnh báo: "Cẩn thận! Đao của hắn có Huyết Ma Độc!"

Tiêu Nhất Sương không hề né tránh. Đôi mắt chàng bình thản đến đáng sợ. Giờ đây, trong tâm trí chàng, hình ảnh ngọn lửa thiêu rụi Tiêu gia trang mười năm trước và ngọn lửa máu của tên đàn chủ gộp lại làm một. Sự căm hờn ngút trời biến thành sự tập trung tuyệt đối.

Chàng đâm một kiếm thẳng vào trung tâm quầng lửa đỏ.

*BÙM!*

Hàn khí và nhiệt độc va chạm tạo ra một tiếng nổ lớn, luồng khí cuồng bạo thổi tung toàn bộ bàn ghế trong tửu quán. Nhưng ngay trong khoảnh khắc đó, kiếm quang của Tiêu Nhất Sương đã xuyên qua quầng lửa, mũi kiếm dừng lại cách yết hầu tên đàn chủ chỉ đúng một phân.

Hàn khí từ mũi kiếm khiến da cổ tên đàn chủ nứt nẻ, máu vừa rỉ ra đã biến thành những hạt băng nhỏ.

Quần áo tên đàn chủ xơ xác, gã run rẩy ngước nhìn thiếu niên trước mặt, đôi mắt đầy vẻ kinh hoảng: "Đừng... Đừng giết ta..."

"Tạ Thiên Uy hiện đang ở đâu?" Tiêu Nhất Sương lạnh lùng hỏi.

"Giáo chủ... Giáo chủ đang ở tổng đài Huyết Đao Giáo tại ngọn Tuyết Sơn... Hắn đang chuẩn bị tiến hành đại lễ Tế Đao vào đêm rằm tháng này... Hắn... hắn đã thu thập đủ các mảnh Băng Tâm Ngọc Quyết khác, chỉ còn..."

Tên đàn chủ chưa kịp nói hết câu, bỗng nhiên đôi mắt gã trợn ngược, mặt chuyển sang màu đen sẫm. Gã giật giật vài cái rồi gục xuống, từ miệng trào ra làn khói đen hôi hám.

Mạc Hàn Nguyệt lập tức bước tới, quỳ xuống kiểm tra tử thi rồi ngước lên nhìn Tiêu Nhất Sương: "Hắn bị trúng Cấm Chế Phệ Tâm của Huyết Đao Giáo. Một khi tiết lộ bí mật tối cao của giáo môn, độc phát thân vong ngay lập tức."

Tiêu Nhất Sương từ từ thu kiếm vào vỏ. Hàn khí trong căn phòng dần tan đi, nhưng sự lạnh lẽo trong mắt chàng vẫn không giảm. Chàng đứng lặng yên, tiêu hóa những thông tin vừa nghe được. Tạ Thiên Uy đã thu thập gần đủ Băng Tâm Ngọc Quyết và sắp tiến hành lễ Tế Đao!

Mạc Hàn Nguyệt đứng dậy, chỉnh lại nếp áo màu xanh ngọc. Nàng nhìn Tiêu Nhất Sương bằng ánh mắt phức tạp, vừa tò mò vừa khâm phục. Chiêu Băng Tâm Kiếm Pháp vừa rồi của chàng thực sự đã làm nàng chấn động.

"Ta là Mạc Hàn Nguyệt, Trưởng lão Linh Nguyệt Cung." Nàng chắp tay, khẽ nghiêng đầu chào. "Cảm ơn công tử đã ra tay tương trợ. Không biết quý danh công tử là gì?"

Tiêu Nhất Sương quay lại nhìn nàng. Nhìn thấy thái độ chân thành và huy hiệu Linh Nguyệt Cung trên eo nàng – một danh môn chánh phái vốn có mối giao hảo cũ với Tiêu gia, ánh mắt chàng bớt đi vài phần gay gắt.

"Tiêu Nhất Sương." Chàng đáp ngắn gọn.

Mạc Hàn Nguyệt giật mình, khẽ mím môi: "Tiêu công tử... Ngươi chính là người duy nhất còn sống sót của Tiêu gia trang năm đó?"

"Đúng vậy."

"Nếu vậy, chuyến đi này của ngươi là hướng về đỉnh Tuyết Sơn để tìm Tạ Thiên Uy?" Mạc Hàn Nguyệt tiếp tục hỏi, vẻ mặt trở nên nghiêm túc. "Ngươi có biết Huyết Đao Giáo hiện nay thế lực lớn đến mức nào không? Tạ Thiên Uy không chỉ tàn nhẫn mà tà công của hắn đã đạt đến tầng thứ chín. Một mình ngươi đi chẳng khác nào nộp mạng."

"Dù là đầm rồng hang hổ, ta cũng phải đi." Giọng Tiêu Nhất Sương kiên định như đá tảng. "Mối thù diệt tộc, không thể không trả."

Mạc Hàn Nguyệt nhìn thẳng vào mắt chàng, thấy được sự quyết tâm không gì lay chuyển nổi. Nàng im lặng một lúc rồi khẽ thở dài, nhưng khóe môi lại hiện lên một nụ cười nhẹ:

"Linh Nguyệt Cung chúng ta và Huyết Đao Giáo vốn là thù sâu như biển. Lần này ta xuống núi cũng là để điều tra về âm mưu dùng Ngọc Quyết luyện tà công của Tạ Thiên Uy. Hắn là kẻ thù chung của võ lâm, không chỉ riêng mình ngươi."

Nàng bước lại gần cửa sổ, nhìn ra trận bão tuyết đang cuồn cuộn bên ngoài rồi quay lại nhìn Tiêu Nhất Sương:

"Tuyết Sơn địa thế hiểm trở, lại có đại trận do Huyết Đao Giáo giăng ra. Ngươi giỏi kiếm pháp, nhưng ta am hiểu trận pháp và y thuật, có thể giúp ngươi phá giải độc khí của chúng. Tiêu công tử, đoạn đường phía trước... ngươi có muốn đồng hành cùng ta không?"

Tiêu Nhất Sương nhìn thiếu nữ trước mặt. Trong đôi mắt trong trẻo của nàng, chàng không thấy sự dối trá hay vụ lợi, chỉ thấy một ý chí kiên cường không kém gì mình. Chàng im lặng một hồi lâu, rồi gật đầu nhẹ:

"Được. Vậy làm phiền Mạc姑娘 (Mạc cô nương) rồi."

Ngoài cửa sổ, gió bão lại nổi lên dữ dội hơn, cuốn theo những bông tuyết trắng xóa cuộn trào giữa khoảng trời bao la. Nhưng bên trong tửu quán, hai con người, hai số phận đã chính thức buộc lại với nhau. Cuộc hành trình thâm nhập hang hùm Huyết Đao Giáo, lật mở những bí mật kinh thiên động địa về Băng Tâm Ngọc Quyết chỉ mới vừa bắt đầu...', 'https://aczlbeorxmewcaqoetzr.supabase.co/storage/v1/object/public/Audio/56f990fa-80f1-4a09-93d4-629e76d67eeb_2.mp3', 748, 'ready', '2026-09-17 11:11:59.904', '2026-09-22 10:11:08.51');
INSERT INTO public.chapters (id, story_id, chapter_number, title, text_content, audio_url, audio_duration_seconds, status, created_at, updated_at) VALUES ('be6e888d-0320-4cda-bd32-abd034d9ab79', '56f990fa-80f1-4a09-93d4-629e76d67eeb', 3, 'Chương 3', '**CHƯƠNG 3: TRÚC LÂM PHỤC KÍCH, HUYẾT ĐAO HIỆN HÌNH**

Ánh hoàng hôn đỏ thẫm như máu tắt dần sau những rặng núi trập trùng, nhường chỗ cho màn đêm tĩnh mịch tràn xuống chân núi Tuyết Nhai. Rời khỏi cơn bão tuyết hoang vu, không khí đã bớt phần hà khắc, nhưng cái lạnh găm vào da thịt vẫn khiến người ta phải rùng mình. 

Trong ngôi miếu hoang nằm sâu giữa rừng trúc xanh thẫm, ngọn lửa nhỏ do Mạc Hàn Nguyệt nhóm lên đang bập bùng cháy, tỏa ra luồng hơi ấm dịu nhẹ. Tiếng củi khô nổ lách tách hòa cùng tiếng gió rì rào qua kẽ lá trúc, tạo nên một giai điệu cô quạnh giữa chốn rừng sâu.

Tiêu Nhất Sương ngồi khoanh chân bên đống lửa, nhắm mắt điều tức. Gương mặt chàng góc cạnh, tái nhạt dưới ánh lửa chiếu rọi, trên trán râm râm một lớp mồ hôi mỏng. Luồng kiếm khí Băng Tâm tuy uy lực vô song nhưng mỗi lần vận dụng quá độ lại khiến hàn khí trong cơ thể chàng dội ngược vào kinh mạch. 

Mạc Hàn Nguyệt ngồi đối diện, đôi mắt trong trẻo quan sát từng nhịp thở của chàng. Nàng khẽ thở dài, tay xoa nhẹ chiếc túi gấm dắt bên hông rồi lấy ra một bao kim ngân.

"Đừng cố gượng nữa." Giọng nói của Hàn Nguyệt vang lên, trong trẻo như tiếng chuông đồng giữa đêm vắng. "Ngươi vừa xuống núi, lại liên tục dùng chân khí chống chọi với bão tuyết, hàn độc của Băng Tâm Kiếm Pháp đã xâm nhập vào tâm phế. Nếu không giải, chưa gặp được kẻ thù thì kinh mạch ngươi đã nứt vỡ rồi."

Tiêu Nhất Sương từ từ mở mắt, ánh nhìn sắc lạnh như băng rùng xuống. Chàng siết chặt chuôi kiếm trong tay, giọng trầm đục:
"Mối thù diệt tộc chưa trả, chút hàn khí này có là gì."

"Cứng đầu." Mạc Hàn Nguyệt nhẹ nhàng đứng dậy. Nàng bước đến bên cạnh chàng, ngón tay thon dài lướt nhanh như múa, kẹp lấy ba kim ngân ngắn chừng nửa tấc. Không đợi Tiêu Nhất Sương phản ứng, nàng đã ra tay như chớp, cắm chuẩn xác ba mũi kim vào các huyệt Chiên Trung, Khí Hải và Mệnh Môn trên lưng chàng.

"Ừm..." Tiêu Nhất Sương hừ nhẹ một tiếng, một luồng khí nóng ấm áp từ các huyệt đạo tràn ra, nhanh chóng đẩy lùi cảm giác tê dại đang lan tỏa trong lồng ngực. Hàn khí cuồn cuộn lập tức được trấn áp. Chàng ngước nhìn nữ tử trước mặt, trong mắt hiện lên sự kinh ngạc: "Y thuật của Linh Nguyệt Cung quả nhiên danh bất hư truyền."

Mạc Hàn Nguyệt thu kim về, mỉm cười nhạt:
"Cân bằng âm dương, cứu người治 bệnh là bổn phận của ta. Nhưng điều ta tò mò hơn... là bộ Băng Tâm Kiếm Pháp mà ngươi đang luyện. Mười năm trước, Tiêu gia ở Giang Nam nổi danh với tuyệt kỹ này, nhưng chỉ trong một đêm, Tiêu gia trại bị san bằng thành bình địa, không một ai sống sót. Ngươi... rốt cuộc có quan hệ gì với Tiêu gia?"

Không khí trong miếu hoang đột ngột chùng xuống. Đống lửa dường như cũng bị sát khí vô hình làm cho chao đảo. Đôi mắt Tiêu Nhất Sương lóe lên lửa hận nồng đậm, tay siết chặt đến mức các khớp xương kêu rắc rắc.

"Ta là Tiêu Nhất Sương." Chàng gằn từng tiếng, chữ chữ như khắc vào xương tủy. "Kẻ sống sót duy nhất của Tiêu gia."

Mạc Hàn Nguyệt lặng người. Nàng nhìn thiếu niên trước mắt, trong lòng dấy lên một niềm thương cảm sâu sắc. Nào ai ngờ đằng sau vẻ ngoài lạnh lùng, dửng dưng kia lại là một mối thù máu sâu như biển cả. 

"Mười năm trước, kẻ dẫn đầu thảm án đó..." Mạc Hàn Nguyệt khẽ ngập ngừng.

"Là Tạ Thiên Uy!" Tiêu Nhất Sương ngắt lời, giọng nói chứa đựng hận thù ngút trời. "Lúc đó ông ta giấu mặt, nhưng khí công Huyết Đao độc đoán và mùi máu tanh tưởi trên người ông ta thì có chết ta cũng không quên. Ông ta vì muốn cướp Băng Tâm Ngọc Quyết mà tàn sát hơn một trăm mạng người nhà ta!"

Mạc Hàn Nguyệt trầm ngâm một lúc rồi cất lời:
"Những năm gần đây, Huyết Đao Giáo phát triển cực thịnh ở miền Tây Bắc. Tạ Thiên Uy luyện thành Huyết Đao Thần Công, tàn nhẫn vô cùng. Hắn không chỉ muốn làm chủ Tây Bắc mà còn có mưu đồ thôn tính cả giang hồ. Ta xuống núi lần này cũng là theo lệnh Cung chủ, điều tra việc Huyết Đao Giáo dạo gần đây lén lút truy tìm tung tích của Băng Tâm Ngọc Quyết."

Nàng nhìn thẳng vào mắt Tiêu Nhất Sương:
"Tiêu công tử, Băng Tâm Ngọc Quyết thật sự đang ở trong tay ngươi?"

Tiêu Nhất Sương chưa kịp lên tiếng thì đột nhiên, tai chàng khẽ động. Ánh mắt chàng lập tức trở nên cảnh giác. Chàng đưa tay ra hiệu cho Mạc Hàn Nguyệt giữ im lặng.

*Sột soạt... Sột soạt...*

Tiếng bước chân rất nhẹ, xen lẫn tiếng ma sát của y phục vào cành trúc vang lên từ bốn phương tám hướng. Mùi hôi thối của máu và sát khí nồng nặc bắt đầu xộc vào trong miếu hoang, lấn át cả mùi gỗ cháy.

"Đã đến rồi thì cần gì phải giấu đầu lòi đuôi!" Tiêu Nhất Sương lạnh lùng cất tiếng, giọng nói mang theo chân khí chấn động cả căn miếu nhỏ.

*Rắc!*

Cánh cửa gỗ mục nát của miếu hoang bị một lực lượng mãnh liệt phá vỡ thành muôn vàn mảnh vụn. Từ trong bóng đêm của rừng trúc, hàng chục bóng đen mặc huyết phi phong, tay cầm những cây đại đao cong vút phản chiếu ánh nguyệt quang đỏ quạch tràn vào, bao vây lấy ngôi miếu.

Một gã đàn ông vạm vỡ, trên mặt có một vết sẹo dài từ trán xuống cằm như một con rết khổng lồ, bước ra từ giữa đám người. Hắn nở một nụ cười tàn nhẫn, thanh Huyết Đao trên tay còn vương vài giọt máu tươi.

"Ha ha ha! Lũ tàn dư Tiêu gia quả nhiên chưa chết hết!" Gã rết cười khoái trá, giọng khàn khàn như tiếng kim loại ma sát. "Bổn sư huynh - Huyết Sát Sứ của Huyết Đao Giáo, đã đợi ngươi ở chân núi này ba ngày rồi. Giáo chủ dự đoán không sai, tuyệt kỹ Băng Tâm xuất hiện trên đỉnh Tuyết Nhai thì chắc chắn kẻ mang Băng Tâm Ngọc Quyết sẽ xuống núi!"

Tiêu Nhất Sương từ từ đứng dậy, tay cầm trường kiếm. Luồng kiếm khí màu trắng bạc bắt đầu bao bọc lấy thân kiếm, tỏa ra hơi lạnh thấu xương khiến những hạt sương trên cành trúc xung quanh tức thì đóng thành băng.

"Chỉ dựa vào đám tôm tép các ngươi?" Tiêu Nhất Sương lạnh lùng nói.

"Khẩu khí lớn đấy!" Huyết Sát Sứ vẫy tay. "Bắt sống hắn! Bắt không được thì giết! Lấy đầu hắn về gặp Giáo chủ!"

"Giết!"

Hơn hai mươi sát thủ Huyết Đao Giáo đồng loạt gầm lên, Huyết Đao trong tay vung lên tạo thành những vệt sáng đỏ rực như máu, xông thẳng vào miếu hoang. Sát khí bùng nổ, cuốn phăng đống lửa đang cháy, khiến không gian chìm vào bóng tối chập chõng, chỉ còn lại những ánh đao kiếm đan xen.

"Trận pháp!" Mạc Hàn Nguyệt khẽ hét lên một tiếng. Nàng không hề hoảng loạn, bàn tay mềm mại vung ra, tám chiếc trận kỳ bằng bạc nhỏ bằng lòng bàn tay cắm phập xuống tám phương vị xung quanh miếu. 

"Linh Nguyệt Mê Viện - Khởi!"

Nàng bấm niệm pháp quyết, một luồng sương mù màu xanh nhạt đột ngột bùng lên từ dưới đất, bao phủ lấy toàn bộ ngôi miếu và diện tích mươi trượng xung quanh. Đám giáo chúng Huyết Đao Giáo lập tức mất phương hướng, những cú chém tàn bạo của chúng chỉ trúng vào khoảng không hoặc chém nhầm vào đồng đội.

"Mê trận? Con ả Linh Nguyệt Cung này dám phá hỏng chuyện tốt của ta!" Huyết Sát Sứ gầm lên, vung Huyết Đao chém cuồng loạn vào không khí.

Trong làn sương mù mê ảo, một luồng ánh sáng trắng bạc tuyệt đẹp nhưng mang theo sức mạnh hủy diệt đột ngột lóe lên. 

Đó là kiếm của Tiêu Nhất Sương.

*Keng!*

Tiếng kiếm ngân vang như tiếng băng vỡ trên đỉnh núi cao. Tiêu Nhất Sương như một bóng ma tuyết, di chuyển không một tiếng động giữa đám đông. Băng Tâm Kiếm Pháp thức thứ nhất: **Tuyết Lạc Vô Thanh**!

Mỗi lần ánh kiếm quét qua, một kẻ địch lại gục xuống. Máu tươi chưa kịp bắn ra đã bị hơi lạnh cực hạn của kiếm khí đóng băng lại ngay trên vết thương. Không có tiếng gào khóc thảm thiết, chỉ có những cái chết lặng lẽ và nhanh chóng.

"Xuất hiện rồi!" Huyết Sát Sứ là một cao thủ lâu năm, hắn nhận ra hướng gió thay đổi liền dồn toàn bộ sức mạnh vào thanh Huyết Đao, chém thẳng về phía sau lưng Tiêu Nhất Sương. Chiêu này mang theo lực lượng cuồng bạo, chiêu thức **Huyết Đao Trảm Nhạc** muốn bổ đôi thân thể thiếu niên.

"Cẩn thận!" Mạc Hàn Nguyệt ở phía xa cất tiếng cảnh báo, đồng thời vung tay phóng ra ba mũi Ngân Châm nhắm vào hạ bộ của Huyết Sát Sứ để ép hắn đổi chiêu.

Huyết Sát Sứ buộc phải thu đao gạt phăng ba mũi ngân châm. Nhưng chỉ một chớp mắt chậm trễ đó đã là quá đủ cho Tiêu Nhất Sương.

Tiêu Nhất Sương xoay người, ánh mắt chàng bình thản đến đáng sợ, không một chút gợn sóng - đúng như tâm cảnh của Băng Tâm Kiếm Pháp: "Tâm như băng tuyết, vạn vật bất biến".

Chàng bước lên một bước, trường kiếm trong tay đâm ra một đường thẳng tắp, đơn giản nhưng không thể né tránh. Hơi lạnh ngưng tụ thành một mũi giáo băng vô hình trên mũi kiếm.

Băng Tâm Kiếm Pháp thức thứ hai: **Hàn Băng Thấu Xương**!

*Phập!*

Thanh Băng Tâm Kiếm xuyên qua lớp giáp dày, cắm sâu vào lồng ngực của Huyết Sát Sứ. Huyết Đao trong tay hắn khựng lại giữa không trung, rơi tự do xuống đất phát ra tiếng *Keng* khô khốc.

Huyết Sát Sứ trợn ngược mắt, nhìn thẳng vào gương mặt lạnh băng của thiếu niên trước mặt. Hắn cảm nhận được máu trong tim mình đang đóng băng với một tốc độ kinh hoàng. 

"Ngươi... ngươi không thể... thắng được Giáo chủ..." Huyết Sát Sứ run rẩy cất tiếng, khóe miệng trào ra những cục máu đã bị đông đặc. "Tạ Giáo chủ... đã luyện thành... Huyết Đao Thần Công tầng thứ tám... Hắn... hắn đang đợi ngươi... ở Tuyết Sơn..."

Tiêu Nhất Sương rút kiếm ra. Một dòng máu đen văng ra rồi lập tức hóa thành băng vụn trên mặt đất. Thân hình đồ sộ của Huyết Sát Sứ ngã ngửa về phía sau, không còn hơi thở.

Xung quanh, đám giáo chúng Huyết Đao Giáo còn lại nhìn thấy thủ lĩnh bị tiêu diệt một cách dễ dàng thì hoảng sợ đến tột cùng. Trận pháp của Mạc Hàn Nguyệt lại càng làm chúng hoảng loạn. Chúng vứt bỏ vũ khí, tháo chạy trối chết vào trong rừng trúc u tối.

Mạc Hàn Nguyệt thu lại trận kỳ, làn sương mù xanh nhạt dần dần tan biến. Ngôi miếu hoang trở lại vẻ tĩnh mịch ban đầu, chỉ còn lại những xác chết bị đóng băng nằm rải rác.

Nàng bước đến bên cạnh Tiêu Nhất Sương, nhìn lưỡi kiếm của chàng vẫn còn bốc lên những làn hơi lạnh mù mạt.

"Tạ Thiên Uy đã biết ngươi còn sống, lại biết ngươi sở hữu Băng Tâm Kiếm Pháp. Chặng đường phía trước của ngươi sẽ là vô vàn cạm bẫy và truy sát." Mạc Hàn Nguyệt nói, giọng điệu nghiêm túc.

Tiêu Nhất Sương tra kiếm vào bao, quay lưng nhìn về phía Nam - nơi trung nguyên xa xôi, ánh mắt kiên định như núi đá:
"Ta chờ ngày này đã mười năm. Dù Huyết Đao Giáo có là đầm rồng hang hổ, ta cũng phải xới tung nó lên."

Mạc Hàn Nguyệt nhìn bóng lưng cô độc nhưng kiên cường của thiếu niên, khẽ mỉm cười:
"Đã vậy, Linh Nguyệt Cung ta cũng có mối nợ cần tính với Tạ Thiên Uy. Chặng đường này, ta đi cùng ngươi."

Dưới ánh nguyệt quang soi sáng rừng trúc, hai bóng người một trắng một xanh sát cánh bên nhau, bắt đầu dấn thân vào vùng phong ba bão táp của chốn giang hồ đầy ân quán thù tòng.', 'https://aczlbeorxmewcaqoetzr.supabase.co/storage/v1/object/public/Audio/56f990fa-80f1-4a09-93d4-629e76d67eeb_3.mp3', 556, 'ready', '2026-09-17 11:11:59.904', '2026-09-22 10:17:06.193');
INSERT INTO public.chapters (id, story_id, chapter_number, title, text_content, audio_url, audio_duration_seconds, status, created_at, updated_at) VALUES ('5f053527-fa66-49f7-b72f-f01ec31a12e4', '56f990fa-80f1-4a09-93d4-629e76d67eeb', 5, 'Chương 5', '**CHƯƠNG 5: HUYẾT TÀ CỔ MIẾU, TÂM KIẾM TRỪ YÊU**

Đêm mù sương phủ kín cánh rừng phía đông chân núi Tuyết Nhai. Cơn gió hanh hao thổi qua những rặng thông già tạo nên tiếng rì rào như tiếng thì thầm của bóng tối. Dưới ánh trăng khuyết treo lơ lửng như một lưỡi liềm bạc, Tiêu Nhất Sương và Mạc Hàn Nguyệt lặng lẽ di chuyển qua những tán cây đen thẫm.

Trận phục kích ở trúc lâm hồi chiều chỉ là bước dạo đầu. Tấm da dê nhuốm máu thu được từ gã sát thủ Huyết Đao Giáo đã mở ra một manh mối quan trọng: cách đây không xa, ẩn sâu trong lòng thung lũng Hoang Tuyền, có một ngôi miếu cổ bỏ hoang. Nơi đó chính là một phân đường bí mật của Huyết Đao Giáo, nơi chúng dùng làm điểm trung chuyển các thông tin tình báo và luyện chế thứ tà độc độc hại.

"Tiêu huynh, huynh có nhận ra điều gì bất thường không?" 

Mạc Hàn Nguyệt đột ngột dừng bước trên một cành thông lớn, vạt áo trắng của nàng lay động nhẹ nhàng trong gió đêm. Ánh mắt nhạy bén của nàng xoáy vào khoảng không u tối phía trước.

Tiêu Nhất Sương dừng lại bên cạnh, bàn tay không rời khỏi chuôi Băng Tâm Kiếm. Chàng nhắm mắt lại, vận chuyển Băng Tâm Quyết, cảm nhận luồng khí cơ xung quanh. Khí lạnh từ kiếm tâm lan tỏa, giúp ngũ quan của chàng trở nên tinh tường gấp bội.

"Mùi máu..." Tiêu Nhất Sương mở mắt, ánh mắt lạnh như băng giá. "Trong gió có mùi máu tươi trộn lẫn với vị tanh nồng của thạch thạch anh và lưu huỳnh. Khí tà tà ma rất đậm."

"Không chỉ vậy," Mạc Hàn Nguyệt đưa tay ra, nhón lấy một lá cây rụng. Trên mặt lá, một lớp sương mù màu tím nhạt đang âm thầm gặm nhấm gân lá. "Đây là ''Mê Hồn Huyết Nhũ Sương'', một loại trận pháp bằng độc khí do Huyết Đao Giáo bố trí. Kẻ nào vô tình đi vào không có thuốc giải sẽ bị mê ảo giác, máu trong người sôi lên cho đến khi nứt da mà chết."

Nói rồi, Mạc Hàn Nguyệt từ trong tay áo lấy ra một chiếc lọ ngọc nhỏ, trích xuất hai viên đan dược màu xanh ngọc bích thơm ngát mùi hoa tuyết. Nàng trao một viên cho Tiêu Nhất Sương:

"Đây là Thanh Tâm Băng Luyện Đan của Linh Nguyệt Cung ta, có thể bách độc bất xâm trong vòng ba canh giờ. Huỳnh hãy uống đi."

Tiêu Nhất Sương không hề ngần ngại nhận lấy và nuốt trôi. Sự tin tưởng giữa hai người, dù mới đồng hành qua vài canh giờ, đã được tôi luyện qua ranh giới sinh tử.

Hai bóng người lại tiếp tục lướt đi trong đêm, nhanh như hai luồng u linh vượt qua màng độc sương, tiến thẳng vào lòng thung lũng.

***

Trước mắt họ hiện ra một ngôi miếu cổ xiêu vẹo, tường đá rêu phong sụp đổ một nửa. Tuy nhiên, đằng sau vẻ hoang tàn ấy lại là một luồng ma khí ngút trời. Những ánh đuốc lập lòe màu đỏ quạch hắt ra từ bên trong điện chính, soi rỡ những hình thù ghê rợn được khắc trên cột đá.

Tiêu Nhất Sương và Mạc Hàn Nguyệt đáp xuống mái ngói âm dương của điện phụ, ghé mắt nhìn qua lỗ hổng trên trần nhà.

Bên trong miếu, một trận pháp kỳ dị bằng máu tươi được vẽ ngay trên nền đá. Ở giữa trận pháp là một chiếc lư hương bằng đồng khổng lồ đang bốc lên những luồng khói đen đặc quánh. Xung quanh, khoảng hai mươi tên đệ tử Huyết Đao Giáo mặc áo choàng đỏ quỳ phục.

Trên vị trí chủ tọa, một người đàn ông trung niên vạm vỡ, khuôn mặt mang một vết sẹo dài từ trán xuống cằm, đang ngồi chễm chệ. Trên lưng hắn là một cây đại đao to bản, sống đao gắn bảy vòng sắt màu huyết dụ kêu lanh lảnh mỗi khi hắn cử động.

"Lương Xung!" Tiêu Nhất Sương siết chặt nắm tay, răng nghiến chặt đến phát ra tiếng ken két. 

Hắn chính là "Huyết Hồn Đao" Lương Xung – một trong Bát Đại Trưởng Lão của Huyết Đao Giáo, kẻ mười năm trước đã cùng Tạ Thiên Uy dội máu xuống Tiêu Gia Cụ! Hình ảnh gã đồ tể này tay cầm đại đao chém đứt đầu vị quản gia già nhà họ Tiêu vẫn khắc sâu vào tâm trí Tiêu Nhất Sương như một cơn ác mộng chưa từng nguôi khoai.

Mạc Hàn Nguyệt cảm nhận được sát khí cuồng bạo đột ngột bộc phát từ người Tiêu Nhất Sương, liền vội vàng vỗ nhẹ lên vai chàng, truyền sang một luồng thanh khí êm dịu, nhỏ giọng nhắc nhở: "Tiêu huynh, bình tĩnh! Hắn là cao thủ Hậu Thiên Đỉnh Phong, xung quanh lại có tà trận trợ uy, không thể mạo hiểm đánh bừa."

Tiêu Nhất Sương hít một hơi thật sâu, ép đợt sóng ngầm trong lòng xuống. Chàng gật đầu, ánh mắt trút bỏ sự tức giận, chỉ còn lại sự lạnh lẽo chí mạng.

Bên dưới, Lương Xung đập mạnh tay xuống ngai gỗ, giọng nói như tiếng sắt thép ma sát vang lên cằn cỗi:

"Một lũ vô dụng! Chỉ có hai tên ranh con mà cũng để mất dấu? Giáo chủ đã truyền lệnh, bằng mọi giá phải bắt sống kẻ mang Băng Tâm Kiếm Pháp. Băng Tâm Ngọc Quyết là chìa khóa mở ra kho tàng võ học Tuyết Sơn, Tạ Giáo Chủ sắp luyện thành Huyết Đao Thần Công đệ cửu trọng, không thể để sai sót vào lúc này!"

Một tên tay sai run rẩy quỳ xuống: "Báo... Báo cáo Trưởng lão, Nhất Đội đi phục kích ở trúc lâm đến nay vẫn chưa trở về. E rằng... e rằng đã gặp bất trắc..."

"Lũ rác rưởi!" Lương Xung gầm lên, vung tay một cái. Một luồng đao khí màu đỏ sẫm bắn ra, trực tiếp chém đôi gã tay sai vừa nói. Máu tươi bắn tung tóe, chảy thẳng vào trận pháp trên mặt đất, khiến luồng khói đen càng thêm cuồng nộ.

"Kẻ nào dám cản đường Huyết Đao Giáo, ta sẽ luyện hắn thành Huyết Nô!" Lương Xung quát lớn.

"Vậy sao? Vậy thì để xem đao của ngươi nhanh, hay kiếm của ta lạnh!"

Một tiếng vang dội như tiếng băng nứt giữa mùa đông vang lên. Trần nhà miếu cổ nổ tung! Mảnh ngói đá rơi xuống như mưa. 

Một luồng kiếm khí màu xanh lam buốt giá từ trên cao đâm thẳng xuống, nhắm thẳng vào đỉnh đầu Lương Xung!

"Kẻ nào?!" Lương Xung biến sắc, phản ứng cực nhanh. Hắn rút phắt cây đại đao sau lưng, vung lên đỡ lấy.

*KENG!*

Tiếng va chạm giữa kiếm và đao chấn động cả ngôi miếu cổ. Sóng xung kích bùng nổ, hất văng mấy tên đệ tử đứng gần. Lương Xung cảm thấy một luồng hàn khí thấu xương xộc thẳng qua thân đao vào kinh mạch, khiến tay hắn tê dại, phải lùi lại ba bước, mỗi bước chân đều lún sâu vào nền đá.

Tiêu Nhất Sương đáp xuống giữa miếu, Băng Tâm Kiếm trong tay rung lên bần bật, tỏa ra từng luồng băng sương mờ ảo. Ánh mắt chàng xoáy vào Lương Xung như lưỡi dao găm.

"Lương Xung, mười năm trước ở Tiêu Gia Cụ, ngươi có còn nhớ vệt máu của ba mươi sáu mạng người nhà họ Tiêu không?" 

Lương Xung ngẩn người, sau đó nhìn kỹ gương mặt Tiêu Nhất Sương và cây báu kiếm tỏa băng khí trên tay chàng. Hắn bỗng cười gằn gợn sóng ghê rợn:

"Ha ha ha! Ta tưởng là ai, hóa ra là con cá dính lưới năm xưa! Tiêu gia tàn dư! Ngươi không trốn ở góc biển rừng sâu mà sống nốt phần đời thối thắt, lại tự mò đến đây nộp mạng sao?"

"Ta đến để lấy cái đầu của ngươi, cúng tế vong linh gia tộc!" Tiêu Nhất Sương cất giọng băng hỏa.

"To gan!" Lương Xung gầm lên. "Tập hợp Huyết Đao Trận! Bắt sống nó cho ta!"

Nói rồi, mười mấy tên sát thủ còn lại lập tức tuốt đao, bao vây Tiêu Nhất Sương vào giữa. Trận pháp bằng máu trên mặt đất bỗng nhiên sáng rực, những luồng huyết khí bốc lên, bám vào lưỡi đao của chúng, khiến sát khí tăng vọt.

Đúng lúc đó, một chùm dải lụa trắng như ánh trăng từ trên không trung rủ xuống, nhẹ nhàng như mây nhưng ẩn chứa kình lực thâm hậu, đánh gạt năm sáu gã sát thủ văng ra xa. 

Mạc Hàn Nguyệt hạ đáp xuống cạnh Tiêu Nhất Sương, tay cầm Linh Nguyệt Trâm, tay kia lắc nhẹ một chiếc chuông bạc. Tiếng chuông ngọc ngân vang rung động không gian, làm gián đoạn nhịp điệu của Huyết Đao Trận.

"Trận pháp tà đạo này dựa vào nhịp tim và huyết khí để vận hành. Tiêu huynh, cứ tập trung đối phó Lương Xung, tà trận và lũ đệ tử hãy giao cho ta!" Mạc Hàn Nguyệt trầm tĩnh nói.

"Mạc姑娘, cẩn thận!" Tiêu Nhất Sương gật đầu.

Không chậm trễ một giây, Tiêu Nhất Sương bước chân đạp theo vị trí Bắc Đẩu, Băng Tâm Kiếm vạch ra một đường cong tuyệt mỹ trong không trung.

"Băng Tâm Kiếm Pháp – Đệ Tứ Thức: Hàn Nhai Băng Thạch!"

Kiếm khí ngưng tụ thành những mũi băng nhọn hoắt, mang theo sức mạnh phá hủy cuồng bạo vọt về phía Lương Xung. 

Lương Xung không phải kẻ hữu danh vô thực. Hắn gầm lên một tiếng, vận Huyết Đao Thần Công, toàn thân như bùng cháy trong luồng huyết hỏa màu đỏ thẫm. Cây đại đao trong tay hắn vung lên tạo thành một vòng tròn máu khổng lồ.

"Huyết Đao Cuồng Sát – Máu Nhuộm Giang Sơn!"

*RẦM! RẦM! RẦM!*

Băng và Lửa va chạm liên tục. Hàn khí càn quét làm đóng băng các cột gỗ trong miếu, trong khi huyết khí tàn bạo của Lương Xung lại ra sức gặm nhấm kiếm quang màu xanh lam. 

Ở phía bên kia, Mạc Hàn Nguyệt di chuyển như u linh giữa vòng vây đệ tử Huyết Đao Giáo. Mỗi lần dải lụa trắng vung ra, hoặc một chiếc kim bạc phóng đi, đều đánh trúng vào tử huyệt của kẻ địch hoặc phá hủy một nhãn trận trên mặt đất. Y thuật và am hiểu阵 pháp của Linh Nguyệt Cung giúp nàng nhanh chóng làm chủ cục diện phụ.

Tuy nhiên, Lương Xung càng đánh càng cuồng bạo. Hắn lợi dụng nội lực Hậu Thiên Đỉnh Phong thâm hậu, ép Tiêu Nhất Sương phải liên tục thu kiếm phòng thủ.

"Nhát gan! Kẻ sống sót của Tiêu gia chỉ có bấy nhiêu thôi sao?" Lương Xung cười lớn, đại đao giáng xuống như núi đè. "Tạ Giáo Chủ đã lấy được nửa mảnh Băng Tâm Ngọc Quyết thứ nhất rồi, khi có đủ mảnh thứ hai, toàn bộ võ lâm sẽ quỳ dưới chân Huyết Đao Giáo! Ngươi có liều mạng cũng chỉ là dã tràng xe cát!"

Tin tức Tạ Thiên Uy đã có trong tay một nửa Băng Tâm Ngọc Quyết như một dội nước lạnh vào tâm trí Tiêu Nhất Sương. Nhưng ngay lập tức, cơn lạnh ấy biến thành sự bình thản tuyệt đối – trạng thái cao nhất của Băng Tâm Quyết: "Tâm như băng tuyết, vạn vật bất kinh."

Tiêu Nhất Sương nhắm mắt lại trong một phần mười giây. Giữa tiếng gầm hú của đao phong và mùi máu tanh nồng, chàng cảm nhận được nhịp thở của tự nhiên, cảm nhận được cái lạnh tuyệt đối trên đỉnh Tuyết Nhai.

Khi chàng mở mắt ra, đôi mắt chàng không còn chút cảm xúc người thường, chỉ còn là hai dòng băng tuyết vĩnh cửu.

"Băng Tâm Kiếm Pháp – Đệ Ngũ Thức: Tuyết Lăng Vạn Lý!"

Báu kiếm Băng Tâm phát ra tiếng ngâm vang rợn người. Tiêu Nhất Sương hóa thành vô số bóng mờ. Không khí trong cổ miếu như ngưng đọng lại, đao khí màu đỏ của Lương Xung bị hàn khí đóng băng giữa chừng, rạn nứt ra từng mảng!

Lương Xung giật mình hoảng hốt, cảm thấy cái chết đang cận kề: "Không thể nào! Ngươi... ngươi đã luyện đến tầng thứ năm rồi sao?!"

Hắn điên cuồng vung đao đỡ gạt, nhưng kiếm chiêu của Tiêu Nhất Sương lúc này tựa như bão tuyết Tây Bắc, vô hình vô dạng, không nơi nào không tới.

*XUYỆT! XUYỆT! XUYỆT!*

Nhiều vết thương do băng đâm xuất hiện trên người Lương Xung. Máu chưa kịp chảy ra đã bị hàn khí đóng băng lập tức. 

Lương Xung lùi dạt về phía lư hương đồng, hơi thở hắt hủi. Tiêu Nhất Sương không cho hắn cơ hội thở dốc, người và kiếm hợp nhất, hóa thành một tia sáng màu lam nhạt đâm xuyên qua hư không.

*PHẬT!*

Lưỡi Băng Tâm Kiếm xuyên qua ngực trái của Lương Xung, găm thẳng hắn vào chiếc cột đá đằng sau. Hàn khí từ thanh kiếm lập tức phủ một lớp băng trắng xóa lên toàn bộ cơ thể hắn.

Lương Xung trợn tròn mắt, nhìn thiếu niên trước mặt bằng sự sợ hãi tột cùng. Hắn hớp từng hớp hơi lạnh: "Tạ... Tạ Giáo Chủ... sẽ... không tha..."

"Hắn không cần tìm ta, ta sẽ tự tìm hắn!" Tiêu Nhất Sương lạnh lùng rút kiếm.

Thân thể Lương Xung ngã gục xuống, vỡ tan thành từng mảnh nhỏ như thủy tinh bị đập vỡ dưới sức tàn phá của Băng Tâm Kiếm Khí.

Những tên đệ tử Huyết Đao Giáo còn sống sót thấy Trưởng lão bị tiêu diệt dã man liền kinh hoàng vứt bỏ vũ khí, tháo chạy ra khỏi cổ miếu. Mạc Hàn Nguyệt không đuổi theo, nàng nhanh chóng tiến đến bên Tiêu Nhất Sương.

"Tiêu huynh, huynh không sao chứ?" Nàng lo lắng nhìn gương mặt tái nhạt của chàng do tiêu hao quá nhiều nội lực.

"Ta không sao," Tiêu Nhất Sương lắc đầu, tra kiếm vào bao. Chàng tiến lại gần chiếc bàn thờ cổ trong điện, nơi Lương Xung vừa ngồi. Trên đó có một chiếc hộp sắt đen khóa kín.

Tiêu Nhất Sương dùng kiếm chém đứt khóa, mở hộp ra. Bên trong là một cuộn mật thư cùng một tấm bản đồ da hổ.

Mạc Hàn Nguyệt ghé mắt nhìn, nét mặt nàng trở nên nghiêm trọng: "Đây là... danh sách các môn phái chánh phái đã bị Huyết Đao Giáo cài nội gián! Và tấm bản đồ này chỉ đến Đại Hội Võ Lâm sắp diễn ra tại Thái Sơn!"

Tiêu Nhất Sương siết chặt cuộn mật thư, ánh mắt nhìn ra bầu trời đêm qua trần nhà sụp đổ.

"Tạ Thiên Uy muốn lợi dụng Đại Hội Võ Lâm để tiêu diệt các phái chánh đạo, ép họ giao ra phần Ngọc Quyết còn lại," Tiêu Nhất Sương cất giọng kiên định. "Chúng ta phải đến Thái Sơn trước khi quá muộn."

Ánh trăng đêm dần tàn, nhường chỗ cho bình minh rực đỏ trên nền trời phía đông. Cổ miếu tà giáo chìm trong lửa đỏ khi Mạc Hàn Nguyệt phóng hỏa đốt trụi nơi này. Hai bóng người trẻ tuổi lại tiếp tục dấn thân vào dông bão giang hồ, nơi những âm mưu đớm máu và ân oán tộc thù đang chờ đón họ phía trước.', 'https://aczlbeorxmewcaqoetzr.supabase.co/storage/v1/object/public/Audio/56f990fa-80f1-4a09-93d4-629e76d67eeb_5.mp3', 668, 'ready', '2026-09-17 11:11:59.904', '2026-09-22 10:25:51.079');
INSERT INTO public.chapters (id, story_id, chapter_number, title, text_content, audio_url, audio_duration_seconds, status, created_at, updated_at) VALUES ('58b7d251-81b4-43ce-8b9d-cbd813909ce9', '56f990fa-80f1-4a09-93d4-629e76d67eeb', 6, 'Chương 6', '**CHƯƠNG 6: SƯƠNG MÙ U CỐC, MẬT TRẬN HUYẾT TÀ**

Đêm về khuya, màn sương độc màu xám tro từ những bụi cây dại mọc trên vách đá đùn ra cuồn cuộn, nuốt trọn lòng gạt hẻm U Cốc dưới chân núi Tuyết Nhai. Nơi đây quanh năm không thấy ánh mặt trời, hơi lạnh tích tụ quyện cùng mùi ẩm mốc của lá mục, tạo nên một bầu không khí u uất, tĩnh mịch đến rợn người.

Tiêu Nhất Sương cùng Mạc Hàn Nguyệt lặng lẽ gieo mình qua những tảng đá rêu phong. Mỗi bước chân của họ nhẹ như lông vũ, hoàn toàn không để lại tiếng động trên lớp thảm lá khô. Ánh trăng khuyết dường như cũng bị màn sương dày đặc nuốt chửng, chỉ còn lại những vệt sáng nhờ nhờ chiếu xuống thân kiếm Băng Tâm đang bao bọc trong vỏ gỗ.

"Nhất Sương, dừng lại một chút."

Mạc Hàn Nguyệt đột ngột giơ tay ra hiệu. Bờ môi nàng mấp máy, đôi mắt phượng đong đầy sự cảnh giác nhìn chằm chằm vào khoảng không phía trước. Nàng đưa hai ngón tay thon dài gắp lấy một mảnh lá thông rụng, nhẹ nhàng búng ra không trung.

"Xoẹt!"

Mảnh lá vừa bay qua khoảng cách mươi bước chân liền như đụng phải một bức tường vô hình, bùng cháy lên một ngọn lửa màu xanh lục rồi hóa thành tro bụi trong chớp mắt.

"Cửu Độc Sương Hồn Trận." Mạc Hàn Nguyệt hạ thấp giọng, ánh mắt ngưng trọng. "Đây là kỳ trận của Linh Nguyệt Cung ta từng ghi chép trong cổ tịch, nhưng đã bị kẻ nào đó cải biến, thêm vào Huyết Khí tà tà của Huyết Đao Giáo. Nếu vô tình bước vào, sương độc sẽ xâm nhập vào kinh mạch, biến máu trong người thành chất độc thiêu rụi nội tạng."

Tiêu Nhất Sương nắm chặt chuôi kiếm, đôi mắt đen thẳm lóe lên một tia lạnh lẽo: "Huyết Đao Giáo lập ra trận đồ này ở một u cốc hẻo lánh như vậy, nhất định đang che giấu một bí mật lớn."

"Trận pháp này tuy hung hiểm nhưng dựa trên nguyên lý Bát Quái biến hóa, đối với người khác là đường chết, nhưng với Linh Nguyệt Cung thì không phải không có cách giải." 

Mạc Hàn Nguyệt mỉm cười nhẹ nhàng, tay trút từ trong tay áo ra năm chiếc kim bạc mảnh như sợi tóc. Nàng bấm tay gõ nhẹ, năm chiếc kim bạc xé gió lao đi, cắm phập vào năm vị trí địa lý khác nhau trên vách đá quanh đó. Ngay lập tức, luồng sương mù màu xám tro như bị một sức mạnh vô hình đẩy lùi, hé mở ra một con đường nhỏ hẹp dẫn sâu vào lòng hang đá phía sau khe núi.

"Đi thôi, trận pháp chỉ bị khống chế trong vòng một khắc." Hàn Nguyệt khẽ nói.

Cả hai nhanh chóng vượt qua vùng sương độc, lẻn vào bên trong lòng hang. Càng đi sâu, không khí không còn cái lạnh tự nhiên của tuyết núi mà thay vào đó là một luồng hơi nóng hừng hực quyện chặt cùng mùi tanh nồng tởm lợm. Mùi máu tươi!

Dưới ánh sáng bập bùng của những ngọn đuốc cắm rải rác trên vách đá vôi, một khung cảnh hãi hùng hiện ra trước mắt họ. Lòng hang rộng lớn được chạm khắc thành một tòa tế đàn hình tròn. Ở giữa tế đàn là một bồn máu cuồn cuộn trào dâng, xung quanh là hàng chục tên giáo đồ Huyết Đao Giáo mặc áo choàng đỏ máu đang quỳ gối, lẩm nhẩm những câu chú ngữ man rợ.

Trên đài cao phía trên bồn máu, một gã đàn ông trung niên khoác áo choàng đen viền đỏ, gương mặt chằng chịt những vết sẹo tà ác đang đứng chắp tay. Hắn chính là Tà Kiếm Huyết Sử – Tạ Mông, một trong bốn đại hộ pháp đắc lực nhất dưới trướng Giáo chủ Tạ Thiên Uy.

"Báo cáo Huyết Sử!" Một tên sát thủ áo đen quỳ rạp xuống chân Tạ Mông. "Các phân đà xung quanh đã gom đủ một trăm lít máu của võ lâm trung nguyên. Tuy nhiên... vẫn chưa tìm thấy tung tích của Băng Tâm Ngọc Quyết!"

Tạ Mông hừ lạnh một tiếng, âm thanh như tiếng kim loại ma sát gắt gao làm rung chuyển cả hang đá: "Lũ vô dụng! Giáo chủ luyện Huyết Đao Thần Công đã đến tầng thứ tám, mười năm trước dốc toàn lực tiêu diệt Tiêu gia chính là để cướp lấy Băng Tâm Ngọc Quyết nhằm trấn áp tâm hỏa. Băng Tâm Ngọc Quyết không có ở Tiêu gia, vậy thì nhất định nằm trong tay tên tàn dư Tiêu Nhất Sương kia!"

Nghe đến đó, toàn thân Tiêu Nhất Sương chấn động. Mười năm qua, mối hận diệt môn luôn là một mảng sương mù dày đặc trong tâm trí chàng. Chàng chỉ biết gia tộc bị thảm sát, nhưng nguyên nhân sâu xa thì mãi đến hôm nay mới được chính miệng kẻ thù xác nhận. Máu trong người chàng sôi lên sùng sục, ngọn lửa thù hận dường như muốn bùng cháy, đập tan mọi sự bình tĩnh.

Nhưng ngay lúc đó, một bàn tay mềm mại, mát lạnh nhẹ nhàng đặt lên mu bàn tay chàng. Mạc Hàn Nguyệt nhìn chàng bằng ánh mắt kiên định, khẽ lắc đầu truyền âm: "Nhất Sương, giữ vững Băng Tâm! Đừng để tâm hỏa làm mờ mắt."

Hơi lạnh từ tay Hàn Nguyệt cùng khẩu quyết Băng Tâm Kiếm Pháp vần vũ trong đầu giúp Tiêu Nhất Sương lập tức lấy lại sự tỉnh táo. Chàng hít một hơi thật sâu, nén chặt sát khí vào tận đáy lòng.

Tạ Mông trên đài cao lại tiếp tục cất giọng lạnh lùng: "Mấy ngày trước, bọn người ở cổ miếu bị tiêu diệt, chứng tỏ tên nghiệt chủng dòng họ Tiêu đã xuống núi. Giáo chủ có lệnh, bằng mọi giá phải bắt sống hắn trên đỉnh Tuyết Sơn vào Lễ Tế Huyết sắp tới. Chỉ cần có máu của hắn và Băng Tâm Ngọc Quyết, Giáo chủ sẽ luyện thành đại công, thống nhất giang hồ, tiêu diệt toàn bộ chánh phái!"

"Thống nhất giang hồ? E rằng ngươi không sống nổi đến ngày đó đâu!"

Một giọng nói lạnh như băng tuyết bất ngờ vang lên, chấn động khắp lòng hang. 

Trước khi lũ giáo đồ Huyết Đao Giáo kịp định thần, một đạo kiếm quang màu xanh lam ngọc tuyệt đẹp đã xé tan màn đêm, giội xuống từ trên cao như một trận mưa tuyết cuồng nổ.

"Xoẹt! Xoẹt! Xoẹt!"

Chỉ trong một nhịp thở, năm sáu tên giáo đồ đứng gần tế đàn còn chưa kịp rút đao đã gục xuống, cổ họng bị kiếm khí xé rách một đường ngọt lịm, không kịp phát ra một tiếng kêu cứu.

"Kẻ nào?!" Tạ Mông giật mình thốt lên, lập tức rút ra thanh đao màu đỏ quạch lưng mang gai nhọn.

Tiêu Nhất Sương đáp xuống giữa tế đàn, tà áo trắng tung bay trong gió lốc. Thanh Băng Tâm Kiếm trong tay chàng phát ra những tiếng ngân nga lanh lảnh, luồng băng hàn kiếm khí cuộn trào xung quanh khiến những giọt máu trong bồn bỗng chốc đóng thành một lớp băng mỏng.

"Tiêu Nhất Sương!" Tạ Mông nheo mắt, đôi mắt hiện lên sự tham lam tột độ. "Thật là thiên đường có lối ngươi không đi, địa ngục không môn ngươi lại tự nhảy vào! Tự mò đến đây trao mạng, đỡ cho ta tốn công tìm kiếm!"

"Mười năm trước, Tạ Thiên Uy nợ Tiêu gia ta hàng trăm mạng người. Hôm nay, ta sẽ thu một chút lãi từ trên người ngươi!" Tiêu Nhất Sương gằn từng chữ, Băng Tâm Kiếm trong tay vung lên một đường bán nguyệt.

"Khoác hác! Huyết Đao Trận, giết hắn cho ta!" Tạ Mông gào lên tàn nhẫn.

Tức thì, hơn mười tên sát thủ Huyết Đao Giáo đồng loạt vung đao xông lên. Những lưỡi đao đỏ sẫm nhuốm đầy khí tà xé gió tạo thành một tấm lưới đao quang ngợp trời, quấn chặt lấy Tiêu Nhất Sương từ mọi phía.

"Sương Phong Tuyết Vũ!"

Tiêu Nhất Sương không hề nao núng, chàng thi triển tầng thứ ba của Băng Tâm Kiếm Pháp. Thân hình chàng hóa thành một luồng tàn ảnh trắng xóa giữa trận đao. Mỗi chiêu kiếm vung ra đều mang theo từng cơn gió tuyết sắc lẹm, va chạm với huyết đao tạo nên những tiếng "keng keng" chói tai, đốm lửa văng tung tóe.

Cùng lúc đó, từ trên vách đá, Mạc Hàn Nguyệt cũng ra tay. Nàng vung dải lụa mềm màu xanh nhạt, kết hợp với hàng trăm chiếc kim bạc bắn ra như mưa rào. Nàng không trực tiếp giáp lá la nhưng mỗi lần dải lụa lướt qua đều đánh trúng các huyệt đạo yếu hại của kẻ địch, phá vỡ sự phối hợp trong trận đồ của Huyết Đao Giáo.

"Trận pháp bị phá rồi! Mau tháo chạy!" Một tên tay sai hoảng hốt kêu lên khi thấy đồng bọn liên tục ngã xuống.

"Lũ vô dụng!" Tạ Mông giận dữ, thân hình như một con chim ưng gãy cánh lao từ đài cao xuống. Thanh Huyết Đao trong tay hắn bùng lên ngọn lửa màu đỏ sẫm, mang theo uy lực khủng khiếp của tầng thứ sáu Huyết Đao Thần Công, chém thẳng xuống đỉnh đầu Tiêu Nhất Sương.

"Huyết Đao Trảm Thiên!"

Cú chém mang theo sức mạnh nghìn cân, không khí xung quanh dường như bị ép tới mức biến dạng.

Tiêu Nhất Sương ngước mắt nhìn lưỡi đao tà ác đang lao đến, ánh mắt chàng tĩnh lặng như mặt hồ băng ngàn năm. Chàng không lùi mà bước tới một bước, Băng Tâm Kiếm giơ lên cao, toàn bộ nội lực Băng Tâm Kiếm Khí ngưng tụ vào mũi kiếm, tạo thành một trụ băng trong suốt dài hàng thước.

"Băng Tâm Triệt Cốt!"

"OÀNH!"

Kiếm đao va chạm tạo nên một luồng sóng xung kích dữ dội. Lửa đỏ và băng tuyết đan xen vào nhau rồi nổ tung. Đá nhọn trên trần hang rơi xuống như mưa. Bồn máu ở giữa tế đàn bị luồng kiếm khí chấn văng ra xung quanh, bắn tung tóe lên vách đá.

Tạ Mông cảm thấy một luồng hơi lạnh thấu xương xộc thẳng qua thanh đao, truyền vào cánh tay, làm trì trệ cả mạch máu trong người hắn. Hắn hoảng hốt lùi lại ba bước, mỗi bước chân đều để lại một dấu chân băng giá trên nền đá.

"Không thể nào! Ngươi mới bao nhiêu tuổi mà lại có thể luyện được Băng Tâm Kiếm Khí thuần khiết đến mức này?!" Tạ Mông kinh hãi nhìn bàn tay đang run rẩy của mình.

Tiêu Nhất Sương không cho hắn thời gian suy nghĩ. Thân hình chàng lóe lên, nhanh như một tia chớp trắng bùng lên giữa lòng hang tối om. 

"Chiêu thứ năm: Tuyết Nhai Lăng Vân!"

Kiếm khí hóa thành một con băng đao khổng lồ cuộn tròn trên không trung, đâm xuyên qua màn sương máu. Tạ Mông kinh hoàng vung đao đỡ gạt nhưng đã quá muộn. 

"RẮC!"

Thanh Huyết Đao vang lên tiếng gãy giòn tan. Lưỡi kiếm Băng Tâm lạnh lẽo đâm xuyên qua lồng ngực Tạ Mông, dính chặt hắn vào cột đá phía sau tế đàn.

"Khặc..." Tạ Mông phun ra một ngụm máu đen, đôi mắt trừng to đầy vẻ không tin nổi. "Giáo... Giáo chủ... sẽ không bỏ qua... cho ngươi..."

"Tạ Thiên Uy ở đâu?" Tiêu Nhất Sương lạnh lùng hỏi, mũi kiếm nhích thêm một phân.

Tạ Mông nở một nụ cười quái dị, khóe miệng trào máu: "Trễ rồi... Lễ Tế Huyết trên đỉnh Tuyết Sơn... đã bắt đầu... Ngươi... chỉ đến... để nộp mạng..." 

Nói đoạn, đầu hắn gục xuống, trút hơi thở cuối cùng.

Khắp lòng hang lúc này chỉ còn lại sự tĩnh lặng chết chóc. Lũ tay sai sống sót đã chạy tán loạn ra ngoài từ lâu. Mạc Hàn Nguyệt nhẹ nhàng đáp xuống bên cạnh Tiêu Nhất Sương. Nàng tiến lại gần thi thể Tạ Mông, dùng mũi kiếm gạt lớp áo choàng của hắn ra và tìm thấy một cuốn mật thư bằng da dê được phong ấn bằng con dấu huyết ấn của Tạ Thiên Uy.

Nàng mở mật thư ra đọc nhanh, nét mặt trở nên cực kỳ nghiêm trọng: "Nhất Sương, quả nhiên đúng như lời hắn nói. Tạ Thiên Uy đang tập hợp toàn bộ cao thủ Huyết Đao Giáo cùng các thế lực tà phái trên đỉnh Tuyết Sơn. Hắn muốn dùng máu của hàng trăm cao thủ chánh phái bị bắt giữ để hoàn thành tầng cuối cùng của Huyết Đao Thần Công vào đêm trăng tròn tới!"

Tiêu Nhất Sương rút thanh Băng Tâm Kiếm ra khỏi lồng ngực Tạ Mông, tra kiếm vào vỏ. Ánh mắt chàng nhìn ra phía cửa hang, nơi những bông tuyết bắt đầu rơi nặng hạt dưới ánh trăng mờ nhạt.

"Đêm trăng tròn... chỉ còn lại ba ngày." Tiêu Nhất Sương trầm giọng, khí thế trên người bùng phát mãnh liệt như một ngọn núi băng sắp sụp đổ. "Mười năm ân oán, đã đến lúc phải thanh toán dứt điểm trên đỉnh Tuyết Sơn rồi!"

Mạc Hàn Nguyệt nhìn bản lĩnh và sự quyết tâm trong mắt chàng, nàng mỉm cười, nắm chặt thanh đoản kiếm bên hông: "Ta sẽ đi cùng huynh. Linh Nguyệt Cung và chánh phái giang hồ tuyệt đối không để âm mưu của Tạ Thiên Uy thành hiện thực."

Hai bóng hình một trắng một xanh nhanh chóng dời khỏi U Cốc đầy mùi máu, lao vào đêm tối, hướng thẳng về phía đỉnh Tuyết Sơn trập trùng trong bão tuyết. Một trận quyết chiến kinh thiên động địa đang chờ đón họ phía trước.', 'https://aczlbeorxmewcaqoetzr.supabase.co/storage/v1/object/public/Audio/56f990fa-80f1-4a09-93d4-629e76d67eeb_6.mp3', 585, 'ready', '2026-09-17 11:11:59.904', '2026-09-22 10:32:00.577');
INSERT INTO public.chapters (id, story_id, chapter_number, title, text_content, audio_url, audio_duration_seconds, status, created_at, updated_at) VALUES ('bd98be77-4817-4613-9cbe-7601f1eef5d7', '56f990fa-80f1-4a09-93d4-629e76d67eeb', 10, 'Chương 10', '**CHƯƠNG 10: ĐOẠN HỒN HUYẾT CHIẾN, PHÁ TRẬN NẠP KIẾM**

Hẻm núi Đoạn Hồn hiện ra trước mắt như một vết chém sâu khổng lồ xé rách vòm trời miền Tây Bắc. Hai bên vách đá dựng đứng vút tầm mắt, xám xịt và trơ trọi, chỉ có những tảng băng vĩnh cửu bám chặt vào từng thớ đá nham nhở. Gió lùa qua khe hẹp tạo nên những âm thanh hú rít rợn người, tựa như tiếng than khóc nghẹn ngào của hàng ngàn vong hồn vương vấn chốn hoang sơn.

Tiêu Nhất Sương dậm nhẹ mũi hài xuống lớp tuyết đọng, ánh mắt lạnh lẽo như băng phiến đảo qua từng góc khuất của con đường hẹp. Tay phải chàng luôn đặt trên chuôi Băng Phách kiếm, luồng kiếm khí nhẹ nhàng lưu chuyển quanh thân thể, sẵn sàng phát động bất cứ lúc nào. Đi song song bên cạnh, Mạc Hàn Nguyệt tay cầm chiếc quạt xếp khép dở, ánh mắt trầm ngâm quan sát từng vết nứt trên vách đá.

"Nơi này địa thế quá hiểm trở," Mạc Hàn Nguyệt cất giọng trầm thấp, tiếng nói bị tiếng gió rít át đi phần nào. "Nếu Huyết Đao Giáo phục kích ở đây, chúng ta sẽ rơi vào thế ngàn cân treo sợi tóc."

Tiêu Nhất Sương gật đầu, ánh mắt không chút dao động: "Dù là đầm rồng hang hổ, hôm nay ta cũng phải bước qua. Con đường này là lối duy nhất dẫn về tổng đàn Huyết Đao Giáo phía sau dãy Tuyết Sơn."

Đúng lúc ấy, bước chân của Mạc Hàn Nguyệt chợt khựng lại. Nàng xòe nhẹ chiếc quạt xếp, năm ngón tay thon dài búng nhẹ ra ba cây ngân kim lóe sáng. Ngân kim găm thẳng vào vách đá bên trái. 

"Xoẹt!"

Một làn khói màu đỏ thẫm lập tức bốc lên từ vách đá nơi ngân kim găm vào, kèm theo tiếng xèo xèo ghê rợn như mỡ rơi vào chảo nóng. Mùi máu tanh nồng đặc quánh xộc thẳng vào mũi hai người.

"Cẩn thận! Chúng ta đã bước vào Huyết Sát Bát Phương Trận!" Mạc Hàn Nguyệt quát lớn, vạt áo trắng tung bay trong gió lạnh.

Ngay lập tức, không gian xung quanh biến đổi dữ dội. Bầu trời xanh nhạt trên đỉnh hẻm núi bị nuốt chửng bởi một màn sương máu đặc quánh. Vách đá hai bên như chuyển động, áp sát lại gần, nhốt Tiêu Nhất Sương và Mạc Hàn Nguyệt vào một không gian khép kín đậm màu cờ máu.

"Ha ha ha! Lũ nhãi ranh chánh phái, các ngươi quả nhiên tự chui đầu vào lưới!"

Một tiếng cười chói tai, chấn động cả màng nhĩ vang lên từ trong màn sương đỏ. Từ trên vách đá cao, một bóng người cao lớn đáp xuống, giậm mạnh chân khiến mặt đất rung chuyển. Hắn khoác một chiếc áo bào màu đỏ máu, gương mặt dữ dằn với một vết sẹo dài chạy dọc từ trán xuống cằm. Trên tay hắn là một thanh đại đao lưỡi đỏ như gỉ sắt, tỏa ra tà khí ngút trời.

"Tả Hộ Pháp Huyết Đao Giáo – Cừu Nghiệp!" Mạc Hàn Nguyệt nheo mắt nhận ra kẻ vừa xuất hiện.

Cừu Nghiệp vuốt vết sẹo trên mặt, ánh mắt vượn ưng găm chặt vào Tiêu Nhất Sương: "Kẻ sống sót của Tiêu gia năm xưa đây sao? Mười năm trước, Tiêu gia các ngươi không biết điều, không chịu dâng Băng Tâm Ngọc Quyết, để rồi cả họ bị diệt vong. Hôm nay, nghiệt chủng nhà họ Tiêu lại tự tìm đến tận cửa!"

Nghe nhắc đến thảm án năm xưa, huyết quản trong người Tiêu Nhất Sương sôi trào. Tuy nhiên, khẩu quyết Băng Tâm Kiếm Pháp "Băng Bất Động, Tâm Bất Loạn" lập tức vang lên trong tâm trí chàng, đè nén ngọn lửa giận dữ xuống đáy lòng. Đôi mắt chàng trở nên trong suốt như thủy tinh băng, không một chút gợn sóng.

"Cừu Nghiệp, nợ máu phải trả bằng máu. Hôm nay, ta lấy đầu ngươi để tế vong linh Tiêu gia!" 

"Keng!"

Băng Phách kiếm ra khỏi vỏ! Một luồng kiếm quang xanh ngọc rực rỡ xé tan màn sương máu, mang theo cái lạnh thấu xương đâm thẳng vào ngực Cừu Nghiệp. 

"Muốn lấy đầu ta? Mơ tưởng!" Cừu Nghiệp vung đại đao chém ngang. 

"Oành!"

Đao kiếm va chạm tạo ra một tiếng nổ kinh thiên động địa. Sóng xung kích cuộn trào hất văng những tảng đá lớn xung quanh. Tiêu Nhất Sương lùi lại ba bước, mỗi bước chân đều in sâu vào lòng đá cứng. Cừu Nghiệp chỉ lùi một bước, nhưng đôi mắt hắn hiện lên sự kinh ngạc khôn tả. 

Hắn không ngờ một gã thiếu niên mười năm trước còn là đứa trẻ ranh, nay lại có nội lực thâm hậu và kiếm khí buốt giá đến nhường này.

"Huyết Sát Bát Phương Trận, vận chuyển cho ta!" Cừu Nghiệp gầm lên.

Màn sương đỏ đục ngầu lập tức sôi động. Những bóng ma được tạo ra từ tà khí huyết sát hư ảo lao ra từ bốn phương tám hướng, nhằm thẳng vào hai người mà cào xé. Cùng lúc đó, sức mạnh của Cừu Nghiệp tăng vọt, thanh đại đao trong tay hắn bùng lên ngọn lửa tà ma màu đỏ thẫm.

"Nhất Sương, giữ chân hắn! Trận pháp này lấy mười tám viên Huyết Tinh Thạch ẩn trong vách đá làm nền tảng, ta cần ba mươi nhịp thở để phá trận nhãn!" Mạc Hàn Nguyệt hét lên, tay nàng biến hóa liên tục, rút từ trong ngực áo ra tám lá cờ trận màu bạc, cắm mạnh xuống đất xung quanh mình để tạo thành trận hình tự vệ.

"Được!" Tiêu Nhất Sương đáp gọn một từ. 

Chàng biến thành một luồng tàn ảnh màu trắng, xông thẳng vào trung tâm tà khí. Băng Phách kiếm múa lên thành những quầng sáng bạc kiên cố. Mỗi chiêu thức của Băng Tâm Kiếm Pháp lúc này như những bông hoa tuyết nở rộ giữa địa ngục máu, đóng băng từng bóng ma tà khí tiến lại gần.

Cừu Nghiệp cười ngất: "Một lũ vắt mũi chưa sạch mà đòi phá trận của ta? Chết đi! Huyết Hải Phao Đao!"

Thanh đại đao của Cừu Nghiệp hóa thành mười sáu lưỡi đao ma quái, cuồn cuộn đổ xuống như ngọn sóng máu dữ dội. Mọi góc né tránh của Tiêu Nhất Sương đều bị phong tỏa hoàn toàn. Áp lực khổng lồ từ tà lực khiến đất đá dưới chân chàng nứt nẻ, máu trong huyết quản rạo rực như muốn nổ tung.

Trong khoảnh khắc sinh tử ấy, Tiêu Nhất Sương nhắm mắt lại. 

Cảnh tượng tuyết rơi trên đỉnh Tuyết Nhai mười năm qua, tiếng dặn dò của ân sư, và sự hy sinh của cha mẹ năm xưa đồng loạt hiện về. Sự tức giận biến mất, chỉ còn lại sự tĩnh lặng tuyệt đối. Tinh thần chàng như hòa làm một với thanh Băng Phách kiếm.

*Băng Tâm Kiếm Pháp – Thức thứ sáu: Tuyết Nhai Lăng Vân!*

Khi Tiêu Nhất Sương mở mắt, một luồng hàn khí chưa từng có bùng phát từ thân thể chàng. Băng Phách kiếm không còn phát ra ánh sáng rực rỡ, mà thu lại thành một đường kiếm quang mỏng như cánh ve, nhưng ngưng tụ hàn khí lạnh giá gấp mười lần trước đó.

Chàng bước lên một bước, vung kiếm!

"Xoẹt!"

Một tiếng xé vải thanh mảnh vang lên, nhưng ngọn sóng đao máu cuồn cuộn của Cừu Nghiệp lập tức khựng lại giữa không trung. Lớp lửa tà ma trên lưỡi đao bị một tầng băng tuyết vĩnh cửu bao phủ, dập tắt hoàn toàn.

"Cái gì?!" Cừu Nghiệp trợn tròn mắt, cảm giác như cả cánh tay cầm đao của mình đã bị đông cứng đến mức mất đi cảm giác.

Cùng lúc đó, ở phía sau, Mạc Hàn Nguyệt kết ấn cuối cùng. Tám lá cờ trận màu bạc đồng loạt phát ra ánh sáng trắng ngần, đâm xuyên qua màn sương đỏ, găm thẳng vào một khe đá ẩn nấp phía xa.

"Bát Phương Phá Sát, Trận Nhãn Tàn!" Mạc Hàn Nguyệt quát lớn.

"Bùng!"

Một tiếng nổ trầm đục vang lên. Màn sương máu dày đặc lập tức tan biến như mây khói gặp nắng hè. Huyết Sát Bát Phương Trận bị phá hủy hoàn toàn! 

Do trận pháp bị phản phệ, Cừu Nghiệp phun ra một ngụm máu tươi, thân hình lảo đảo lùi lại. Tà lực trong cơ thể hắn hỗn loạn, kinh mạch như bị xé rách.

"Thời cơ đến rồi!" Tiêu Nhất Sương không để mất một giây. 

Chàng lướt đi trên không trung như một con chim ưng tuyết hạ cánh. Băng Phách kiếm vẽ nên một đường cong hoàn hảo giữa không trung, đâm thẳng vào lồng ngực của Cừu Nghiệp. 

Cừu Nghiệp hoảng hốt giơ đại đao lên đỡ, nhưng thanh đại đao đã bị hàn khí làm cho giòn rụm từ trước. 

"Rắc!"

Thanh Huyết Ma Đao gãy đôi! Mũi Băng Phách kiếm lạnh lẽo đâm xuyên qua vai trái của Cừu Nghiệp, găm chặt hắn vào vách đá phía sau.

Hàn khí từ lưỡi kiếm lập tức lan rộng, phong tỏa toàn bộ kinh mạch của Tả Hộ Pháp Huyết Đao Giáo, khiến hắn không thể nhúc nhích dù chỉ một ngón tay.

Cừu Nghiệp ho ra một ngụm máu lẫn những tinh thể băng nhỏ, ánh mắt đầy vẻ kinh hoảng nhìn thiếu niên trước mặt: "Nhãi ranh... ngươi..."

Tiêu Nhất Sương đứng im như một pho tượng tuyết, tay giữ chặt chuôi kiếm, ánh mắt lạnh lẽo nhìn chằm chằm vào kẻ thù diệt tộc: "Tạ Thiên Uy đang ở đâu? Băng Tâm Ngọc Quyết mà các ngươi cướp đi năm xưa hiện nằm trong tay ai?"

Cừu Nghiệp cắn răng cười cay đắng, khóe miệng chảy dài vết máu: "Nói cho ngươi biết thì sao? Giáo chủ... Giáo chủ đã gom đủ các mảnh Băng Tâm Ngọc Quyết... Vào đêm trăng tròn ba ngày tới, tại Huyết Đàn trên đỉnh Tuyết Sơn, ngài ấy sẽ luyện thành Huyết Ma Đại Pháp... Lúc đó, cả võ lâm này sẽ quỳ dưới chân Huyết Đao Giáo! Các ngươi... chỉ là những con kiến hèn mạt..."

Mạc Hàn Nguyệt tiến lại gần, sắc mặt nghiêm nghị: "Đêm trăng tròn... Đó là thời điểm tà khí đạt đỉnh điểm, cũng là lúc Huyết Ma Đại Pháp dễ thành công nhất nhưng cũng nguy hiểm nhất."

Tiêu Nhất Sương siết chặt chuôi kiếm, hàn khí bùng lên dập tắt chút tàn lực cuối cùng của Cừu Nghiệp. Tả Hộ Pháp Huyết Đao Giáo gục đầu xuống, toàn thân bị băng giá bao phủ hoàn toàn, không còn hơi thở.

Nhẹ nhàng rút Băng Phách kiếm ra, Tiêu Nhất Sương vung tay rũ sạch giọt máu cuối cùng bám trên lưỡi kiếm. Kiếm cắm trở lại vỏ với một tiếng "keng" trong trẻo.

Cơn gió lạnh lùa qua hẻm núi Đoạn Hồn, thổi tung mái tóc đen cùng vạt áo dài phủ đầy bụi đường của hai người. Màn sương tà giáo đã tan, trả lại khung cảnh hoang sơ và lạnh giá vốn có của hẻm núi. Nhưng bầu không khí đè nặng lên vai họ lại trở nên nghiêm trọng hơn bao giờ hết.

"Chỉ còn ba ngày nữa," Mạc Hàn Nguyệt nhìn về phía đỉnh Tuyết Sơn xa xăm, nơi những rặng núi trắng xóa ẩn hiện trong mây mờ. "Nếu Tạ Thiên Uy luyện thành Huyết Ma Đại Pháp, không chỉ thù nhà ngươi khó trả, mà cả chánh phái trung nguyên cũng sẽ đối mặt với một thảm họa diệt vong."

Tiêu Nhất Sương ngước nhìn đỉnh núi cao vút mây trời, đôi mắt kiên định không chút sợ hãi. Trải qua mười năm ẩn nhẫn, qua bao cuộc chiến sinh tử dọc đường, ngày quyết đấu cuối cùng rốt cuộc cũng đã đến gần.

"Ba ngày là quá đủ," Tiêu Nhất Sương cất giọng trầm tĩnh, nhưng chứa đựng sức mạnh kiên cường như vách đá tuyết sơn. "Trận chiến trên đỉnh Tuyết Sơn này, ta sẽ dùng Băng Tâm Kiếm Pháp rửa sạch mọi tội ác của Huyết Đao Giáo."

Nói rồi, chàng cùng Mạc Hàn Nguyệt rảo bước tiến về phía lối ra của hẻm núi Đoạn Hồn, hướng thẳng về phía đỉnh Tuyết Sơn kiêu hùng – nơi bão tuyết và máu sẽ cuộn trào trong cuộc đại quyết chiến sắp tới.', NULL, NULL, 'pending', '2026-09-17 11:11:59.904', '2026-09-22 09:33:00.279');


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: audioapp
--

INSERT INTO public.genres (id, name, slug, created_at) VALUES ('71cc3d0a-bb5b-4bbb-9ad0-75a5056133e5', 'Kiếm hiệp', 'kiem-hiep', '2026-09-17 11:11:59.904');


--
-- Data for Name: story_genres; Type: TABLE DATA; Schema: public; Owner: audioapp
--

INSERT INTO public.story_genres (story_id, genre_id) VALUES ('56f990fa-80f1-4a09-93d4-629e76d67eeb', '71cc3d0a-bb5b-4bbb-9ad0-75a5056133e5');


--
-- PostgreSQL database dump complete
--

\unrestrict ZkpKc9oPboyU5AP4fe5HeUJgFkxzimPdu2bvgn5dIeRJtfsyv0MS771c0gUQoCi

