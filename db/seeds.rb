3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
		)
end

puts '3 topics created'

10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi in bibendum ipsum, non ornare sem. Integer non sem pretium justo volutpat vestibulum eu ut erat. Mauris tempor cursus diam id ultrices. Duis pretium, urna vel porta semper, diam sem mattis ex, quis tincidunt ex nulla nec odio. Suspendisse nulla tellus, facilisis id scelerisque vitae, porttitor sodales mi. Sed mollis pretium massa ac blandit. Maecenas auctor erat sed ex feugiat scelerisque. Proin dignissim justo bibendum, faucibus orci in, auctor felis. Donec in consequat quam.",
		topic_id: Topic.last.id
	)
end
puts "10 blogs created"
5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}", 
		percent_utilized: 15
	)
end

puts "5 skills created"

8.times do |portfolio|
	Portfolio.create!(
		title:  "Portfolio title: #{portfolio}",
    subtitle: "My Great Service",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi in bibendum ipsum, non ornare sem. Integer non sem pretium justo volutpat vestibulum eu ut erat. Mauris tempor cursus diam id ultrices. Duis pretium, urna vel porta semper, diam sem mattis ex, quis tincidunt ex nulla nec odio. Suspendisse nulla tellus, facilisis id scelerisque vitae, porttitor sodales mi. Sed mollis pretium massa ac blandit. Maecenas auctor erat sed ex feugiat scelerisque. Proin dignissim justo bibendum, faucibus orci in, auctor felis. Donec in consequat quam.", 
    main_image: "https://placehold.it/600x300",
    thumb_image:"https://placehold.it/350x200"
	)
end

1.times do |portfolio|
	Portfolio.create!(
		title:  "Portfolio title: #{portfolio}",
    subtitle: "Angular",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi in bibendum ipsum, non ornare sem. Integer non sem pretium justo volutpat vestibulum eu ut erat. Mauris tempor cursus diam id ultrices. Duis pretium, urna vel porta semper, diam sem mattis ex, quis tincidunt ex nulla nec odio. Suspendisse nulla tellus, facilisis id scelerisque vitae, porttitor sodales mi. Sed mollis pretium massa ac blandit. Maecenas auctor erat sed ex feugiat scelerisque. Proin dignissim justo bibendum, faucibus orci in, auctor felis. Donec in consequat quam.", 
    main_image: "https://placehold.it/600x300",
    thumb_image:"https://placehold.it/350x200"
	)
end

3.times do |technology|
	Portfolio.last.technologies.create!(
		name: "Technology-#{technology}",
	)
end

puts "3 technologies created"

puts "9 portfolios created"
